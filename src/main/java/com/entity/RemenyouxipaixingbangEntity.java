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
 * 热门游戏排行榜
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-17 22:56:08
 */
@TableName("remenyouxipaixingbang")
public class RemenyouxipaixingbangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public RemenyouxipaixingbangEntity() {
		
	}
	
	public RemenyouxipaixingbangEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 游戏名称
	 */
					
	private String youximingcheng;
	
	/**
	 * 游戏分类
	 */
					
	private String youxifenlei;
	
	/**
	 * 游戏标签
	 */
					
	private String youxibiaoqian;
	
	/**
	 * 局域网
	 */
					
	private String juyuwang;
	
	/**
	 * 价格
	 */
					
	private String jiage;
	
	/**
	 * 封面
	 */
					
	private String fengmian;
	
	/**
	 * 游戏文件
	 */
					
	private String youxiwenjian;
	
	/**
	 * 本周排名
	 */
					
	private String benzhoupaiming;
	
	/**
	 * 游戏简介
	 */
					
	private String youxijianjie;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：游戏名称
	 */
	public void setYouximingcheng(String youximingcheng) {
		this.youximingcheng = youximingcheng;
	}
	/**
	 * 获取：游戏名称
	 */
	public String getYouximingcheng() {
		return youximingcheng;
	}
	/**
	 * 设置：游戏分类
	 */
	public void setYouxifenlei(String youxifenlei) {
		this.youxifenlei = youxifenlei;
	}
	/**
	 * 获取：游戏分类
	 */
	public String getYouxifenlei() {
		return youxifenlei;
	}
	/**
	 * 设置：游戏标签
	 */
	public void setYouxibiaoqian(String youxibiaoqian) {
		this.youxibiaoqian = youxibiaoqian;
	}
	/**
	 * 获取：游戏标签
	 */
	public String getYouxibiaoqian() {
		return youxibiaoqian;
	}
	/**
	 * 设置：局域网
	 */
	public void setJuyuwang(String juyuwang) {
		this.juyuwang = juyuwang;
	}
	/**
	 * 获取：局域网
	 */
	public String getJuyuwang() {
		return juyuwang;
	}
	/**
	 * 设置：价格
	 */
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	/**
	 * 获取：价格
	 */
	public String getJiage() {
		return jiage;
	}
	/**
	 * 设置：封面
	 */
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
	/**
	 * 设置：游戏文件
	 */
	public void setYouxiwenjian(String youxiwenjian) {
		this.youxiwenjian = youxiwenjian;
	}
	/**
	 * 获取：游戏文件
	 */
	public String getYouxiwenjian() {
		return youxiwenjian;
	}
	/**
	 * 设置：本周排名
	 */
	public void setBenzhoupaiming(String benzhoupaiming) {
		this.benzhoupaiming = benzhoupaiming;
	}
	/**
	 * 获取：本周排名
	 */
	public String getBenzhoupaiming() {
		return benzhoupaiming;
	}
	/**
	 * 设置：游戏简介
	 */
	public void setYouxijianjie(String youxijianjie) {
		this.youxijianjie = youxijianjie;
	}
	/**
	 * 获取：游戏简介
	 */
	public String getYouxijianjie() {
		return youxijianjie;
	}

}
