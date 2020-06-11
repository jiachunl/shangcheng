package com.itdr.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Order {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.user_id
     *
     * @mbg.generated
     */
    private Integer userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.order_no
     *
     * @mbg.generated
     */
    private Long orderNo;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.shipping_id
     *
     * @mbg.generated
     */
    private Integer shippingId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.payment
     *
     * @mbg.generated
     */
    private BigDecimal payment;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.payment_type
     *
     * @mbg.generated
     */
    private Integer paymentType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.postage
     *
     * @mbg.generated
     */
    private Integer postage;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.status
     *
     * @mbg.generated
     */
    private Integer status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.payment_time
     *
     * @mbg.generated
     */
    private Date paymentTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.send_time
     *
     * @mbg.generated
     */
    private Date sendTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.end_time
     *
     * @mbg.generated
     */
    private Date endTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.close_time
     *
     * @mbg.generated
     */
    private Date closeTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.create_time
     *
     * @mbg.generated
     */
    private Date createTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column neuedu_order.update_time
     *
     * @mbg.generated
     */
    private Date updateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.id
     *
     * @return the value of neuedu_order.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.id
     *
     * @param id the value for neuedu_order.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.user_id
     *
     * @return the value of neuedu_order.user_id
     *
     * @mbg.generated
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.user_id
     *
     * @param userId the value for neuedu_order.user_id
     *
     * @mbg.generated
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.order_no
     *
     * @return the value of neuedu_order.order_no
     *
     * @mbg.generated
     */
    public Long getOrderNo() {
        return orderNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.order_no
     *
     * @param orderNo the value for neuedu_order.order_no
     *
     * @mbg.generated
     */
    public void setOrderNo(Long orderNo) {
        this.orderNo = orderNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.shipping_id
     *
     * @return the value of neuedu_order.shipping_id
     *
     * @mbg.generated
     */
    public Integer getShippingId() {
        return shippingId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.shipping_id
     *
     * @param shippingId the value for neuedu_order.shipping_id
     *
     * @mbg.generated
     */
    public void setShippingId(Integer shippingId) {
        this.shippingId = shippingId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.payment
     *
     * @return the value of neuedu_order.payment
     *
     * @mbg.generated
     */
    public BigDecimal getPayment() {
        return payment;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.payment
     *
     * @param payment the value for neuedu_order.payment
     *
     * @mbg.generated
     */
    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.payment_type
     *
     * @return the value of neuedu_order.payment_type
     *
     * @mbg.generated
     */
    public Integer getPaymentType() {
        return paymentType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.payment_type
     *
     * @param paymentType the value for neuedu_order.payment_type
     *
     * @mbg.generated
     */
    public void setPaymentType(Integer paymentType) {
        this.paymentType = paymentType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.postage
     *
     * @return the value of neuedu_order.postage
     *
     * @mbg.generated
     */
    public Integer getPostage() {
        return postage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.postage
     *
     * @param postage the value for neuedu_order.postage
     *
     * @mbg.generated
     */
    public void setPostage(Integer postage) {
        this.postage = postage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.status
     *
     * @return the value of neuedu_order.status
     *
     * @mbg.generated
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.status
     *
     * @param status the value for neuedu_order.status
     *
     * @mbg.generated
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.payment_time
     *
     * @return the value of neuedu_order.payment_time
     *
     * @mbg.generated
     */
    public Date getPaymentTime() {
        return paymentTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.payment_time
     *
     * @param paymentTime the value for neuedu_order.payment_time
     *
     * @mbg.generated
     */
    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.send_time
     *
     * @return the value of neuedu_order.send_time
     *
     * @mbg.generated
     */
    public Date getSendTime() {
        return sendTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.send_time
     *
     * @param sendTime the value for neuedu_order.send_time
     *
     * @mbg.generated
     */
    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.end_time
     *
     * @return the value of neuedu_order.end_time
     *
     * @mbg.generated
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.end_time
     *
     * @param endTime the value for neuedu_order.end_time
     *
     * @mbg.generated
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.close_time
     *
     * @return the value of neuedu_order.close_time
     *
     * @mbg.generated
     */
    public Date getCloseTime() {
        return closeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.close_time
     *
     * @param closeTime the value for neuedu_order.close_time
     *
     * @mbg.generated
     */
    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.create_time
     *
     * @return the value of neuedu_order.create_time
     *
     * @mbg.generated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.create_time
     *
     * @param createTime the value for neuedu_order.create_time
     *
     * @mbg.generated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column neuedu_order.update_time
     *
     * @return the value of neuedu_order.update_time
     *
     * @mbg.generated
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column neuedu_order.update_time
     *
     * @param updateTime the value for neuedu_order.update_time
     *
     * @mbg.generated
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}