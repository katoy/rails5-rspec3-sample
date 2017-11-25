class Api::V1::ExpensesController < ApplicationController
  # GET /expenses
  def index
    @expenses = Expense.all.order(day_at: :asc, id: :asc)
    render 'index', formats: 'json', handlers: 'jbuilder'
  end

  # GET /expenses/2017-11-01
  def show
    @expenses = Expense.where(day_at: Time.zone.parse(params[:date]))
                       .order(day_at: :asc, id: :asc)
    # render json: @expenses
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  # POST /expenses
  def create
    @expense = Expense.new(create_params)

    if @expense.save
      render 'create', formats: 'json', handlers: 'jbuilder', status: :created
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.require(:expense).permit(:payee, :amount, :day_at, :title)
  end
end
