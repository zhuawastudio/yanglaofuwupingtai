package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 出入库
 *
 * @author 
 * @email
 */
@TableName("zhongyao_churu_inout")
public class ZhongyaoChuruInoutEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ZhongyaoChuruInoutEntity() {

	}

	public ZhongyaoChuruInoutEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 出入库流水号
     */
    @TableField(value = "zhongyao_churu_inout_uuid_number")

    private String zhongyaoChuruInoutUuidNumber;


    /**
     * 出入库名称
     */
    @TableField(value = "zhongyao_churu_inout_name")

    private String zhongyaoChuruInoutName;


    /**
     * 出入库类型
     */
    @TableField(value = "zhongyao_churu_inout_types")

    private Integer zhongyaoChuruInoutTypes;


    /**
     * 备注
     */
    @TableField(value = "zhongyao_churu_inout_content")

    private String zhongyaoChuruInoutContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：出入库流水号
	 */
    public String getZhongyaoChuruInoutUuidNumber() {
        return zhongyaoChuruInoutUuidNumber;
    }
    /**
	 * 获取：出入库流水号
	 */

    public void setZhongyaoChuruInoutUuidNumber(String zhongyaoChuruInoutUuidNumber) {
        this.zhongyaoChuruInoutUuidNumber = zhongyaoChuruInoutUuidNumber;
    }
    /**
	 * 设置：出入库名称
	 */
    public String getZhongyaoChuruInoutName() {
        return zhongyaoChuruInoutName;
    }
    /**
	 * 获取：出入库名称
	 */

    public void setZhongyaoChuruInoutName(String zhongyaoChuruInoutName) {
        this.zhongyaoChuruInoutName = zhongyaoChuruInoutName;
    }
    /**
	 * 设置：出入库类型
	 */
    public Integer getZhongyaoChuruInoutTypes() {
        return zhongyaoChuruInoutTypes;
    }
    /**
	 * 获取：出入库类型
	 */

    public void setZhongyaoChuruInoutTypes(Integer zhongyaoChuruInoutTypes) {
        this.zhongyaoChuruInoutTypes = zhongyaoChuruInoutTypes;
    }
    /**
	 * 设置：备注
	 */
    public String getZhongyaoChuruInoutContent() {
        return zhongyaoChuruInoutContent;
    }
    /**
	 * 获取：备注
	 */

    public void setZhongyaoChuruInoutContent(String zhongyaoChuruInoutContent) {
        this.zhongyaoChuruInoutContent = zhongyaoChuruInoutContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "ZhongyaoChuruInout{" +
            "id=" + id +
            ", zhongyaoChuruInoutUuidNumber=" + zhongyaoChuruInoutUuidNumber +
            ", zhongyaoChuruInoutName=" + zhongyaoChuruInoutName +
            ", zhongyaoChuruInoutTypes=" + zhongyaoChuruInoutTypes +
            ", zhongyaoChuruInoutContent=" + zhongyaoChuruInoutContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
