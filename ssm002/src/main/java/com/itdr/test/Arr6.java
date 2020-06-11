package com.itdr.test;

import java.util.stream.IntStream;

public class Arr6{
    public static void main(String[] args){
       /* int[]data=new int[]{1,5,4,7,8,9,11,15,13};
        int max = Integer.MIN_VALUE; //首先给定一个最小值
//        int avg=0;
//        int sum=0;
//首先遍历数组中的所有数字，从第一个数开始，如果大于给定的数，则将这个数赋给max
        for(int i=0;i<data.length;i++){
            if(data[i]>max){
                max=data[i];
            }
//每循环一次，将结果保存在sum中
//            sum=sum+data[i];
        }
//计算出总和后，再除以数组长度，得到平均值
//        avg=sum/data.length;

        System.out.println(max);
//        System.out.println(avg);
//        System.out.println(sum);*/
       int[] arrays={12,45,58,65,25};
        System.out.println(IntStream.of(arrays).max().getAsInt());
    }
}
