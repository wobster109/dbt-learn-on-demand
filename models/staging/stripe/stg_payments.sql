with payments as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        round(amount/100,2) amount

    from {{source('stripe','payment')}}

)

select * from payments