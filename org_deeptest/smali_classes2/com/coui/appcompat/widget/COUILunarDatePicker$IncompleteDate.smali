.class Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source "COUILunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncompleteDate"
.end annotation


# static fields
.field static final LEAP_MONTH_ADDED_VALUE:I = 0xc


# instance fields
.field private date:Ljava/util/Calendar;

.field private day:I

.field private hour:I

.field private isIncomplete:Z

.field private minute:I

.field private month:I

.field private year:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->init(Ljava/util/Calendar;)V

    .line 841
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->init(Ljava/util/Calendar;)V

    .line 845
    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 799
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    return v0
.end method


# virtual methods
.method add(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 955
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 958
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 959
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 961
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 964
    :cond_2
    :goto_0
    return-void
.end method

.method after(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .line 981
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 984
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public afterOrEqual(Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Calendar;

    .line 988
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 991
    :cond_2
    return v1
.end method

.method before(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .line 967
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 970
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public beforeOrEqual(Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Calendar;

    .line 974
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 977
    :cond_2
    return v1
.end method

.method public change(III)V
    .locals 12
    .param p1, "field"    # I
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 1013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    .line 1014
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 1015
    .local v3, "gregorianMonth":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v5

    .line 1016
    .local v5, "gregorianDay":I
    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    .line 1018
    .local v6, "lunarDates":[I
    if-ne p1, v4, :cond_3

    .line 1019
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v2, :cond_2

    .line 1020
    const/16 v2, 0x1b

    if-le p2, v2, :cond_0

    if-ne p3, v0, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    sub-int/2addr v0, p2

    invoke-virtual {v2, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 1022
    :cond_0
    if-ne p2, v0, :cond_1

    if-le p3, v2, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    sub-int v2, p3, p2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 1028
    :cond_2
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    goto/16 :goto_3

    .line 1030
    :cond_3
    const/4 v4, 0x0

    if-ne p1, v2, :cond_9

    .line 1031
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_8

    .line 1036
    add-int/lit8 v0, p3, 0x1

    .line 1037
    .local v0, "newLunarMonthIndex":I
    aget v7, v6, v4

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v7

    .line 1038
    .local v7, "leapMonth":I
    if-nez v7, :cond_4

    .line 1039
    move v8, v0

    .line 1040
    .local v8, "newLunarMonth":I
    const/4 v9, 0x0

    goto :goto_0

    .line 1041
    .end local v8    # "newLunarMonth":I
    :cond_4
    if-gt v0, v7, :cond_5

    .line 1042
    move v8, v0

    .line 1043
    .restart local v8    # "newLunarMonth":I
    const/4 v9, 0x0

    goto :goto_0

    .line 1044
    .end local v8    # "newLunarMonth":I
    :cond_5
    add-int/lit8 v8, v7, 0x1

    if-ne v0, v8, :cond_6

    .line 1045
    move v8, v7

    .line 1046
    .restart local v8    # "newLunarMonth":I
    const/4 v9, 0x1

    goto :goto_0

    .line 1048
    .end local v8    # "newLunarMonth":I
    :cond_6
    add-int/lit8 v8, v0, -0x1

    .line 1049
    .restart local v8    # "newLunarMonth":I
    move v9, v4

    .line 1052
    .local v9, "newLeapMonthFlag":Z
    :goto_0
    aget v10, v6, v4

    aget v2, v6, v2

    invoke-static {v10, v8, v2, v9}, Lcom/coui/appcompat/widget/COUILunarUtil;->clampDay(IIIZ)I

    move-result v2

    .line 1053
    .local v2, "clampDay":I
    aget v4, v6, v4

    invoke-static {v4, v8, v2, v9}, Lcom/coui/appcompat/widget/COUILunarUtil;->lunarToSolar(IIIZ)Ljava/util/Date;

    move-result-object v4

    .line 1055
    .local v4, "newDate":Ljava/util/Date;
    if-eqz v4, :cond_7

    .line 1056
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 1058
    .end local v0    # "newLunarMonthIndex":I
    .end local v2    # "clampDay":I
    .end local v4    # "newDate":Ljava/util/Date;
    .end local v7    # "leapMonth":I
    .end local v8    # "newLunarMonth":I
    .end local v9    # "newLeapMonthFlag":Z
    :cond_7
    goto/16 :goto_3

    .line 1059
    :cond_8
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    goto/16 :goto_3

    .line 1061
    :cond_9
    if-ne p1, v0, :cond_10

    .line 1062
    iget-boolean v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    const/4 v8, 0x3

    const/high16 v9, -0x80000000

    if-nez v7, :cond_a

    if-eq p3, v9, :cond_a

    .line 1063
    aget v0, v6, v0

    aget v2, v6, v2

    aget v4, v6, v8

    invoke-static {p3, v0, v2, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->changeALunarYear(IIII)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    goto/16 :goto_3

    .line 1064
    :cond_a
    iget-boolean v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    const/16 v10, 0xc

    if-nez v7, :cond_c

    if-ne p3, v9, :cond_c

    .line 1065
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 1066
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 1068
    aget v7, v6, v0

    sub-int/2addr v7, v0

    aget v8, v6, v8

    if-ne v8, v0, :cond_b

    goto :goto_1

    :cond_b
    move v4, v10

    :goto_1
    add-int/2addr v7, v4

    iput v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 1069
    aget v0, v6, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 1070
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->hour:I

    .line 1071
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->minute:I

    goto :goto_3

    .line 1072
    :cond_c
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-eqz v2, :cond_f

    if-eq p3, v9, :cond_f

    .line 1073
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 1074
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 1075
    iget v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    rem-int/2addr v2, v10

    add-int/2addr v2, v0

    .line 1076
    .local v2, "lunarMonth":I
    iget v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    div-int/2addr v7, v10

    if-lez v7, :cond_d

    iget v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v7

    if-ne v7, v2, :cond_d

    goto :goto_2

    :cond_d
    move v0, v4

    .line 1077
    .local v0, "leapMonthFlag":Z
    :goto_2
    iget v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    iget v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    invoke-static {v4, v2, v7, v0}, Lcom/coui/appcompat/widget/COUILunarUtil;->clampDay(IIIZ)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 1079
    iget v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    iget v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    invoke-static {v4, v2, v7, v0}, Lcom/coui/appcompat/widget/COUILunarUtil;->lunarToSolar(IIIZ)Ljava/util/Date;

    move-result-object v4

    .line 1086
    .local v4, "solarDate":Ljava/util/Date;
    if-eqz v4, :cond_e

    .line 1087
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 1089
    .end local v0    # "leapMonthFlag":Z
    .end local v2    # "lunarMonth":I
    .end local v4    # "solarDate":Ljava/util/Date;
    :cond_e
    goto :goto_3

    .line 1090
    :cond_f
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 1093
    :cond_10
    :goto_3
    return-void
.end method

.method clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;

    .line 1003
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 1010
    :cond_1
    :goto_0
    return-void
.end method

.method clear()V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 945
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 946
    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 947
    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 948
    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->hour:I

    .line 949
    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->minute:I

    .line 951
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 952
    return-void
.end method

.method get(I)I
    .locals 1
    .param p1, "field"    # I

    .line 880
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0

    .line 883
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 884
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    return v0

    .line 885
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 886
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    return v0

    .line 887
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 888
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    return v0

    .line 892
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getActualMaximum(I)I
    .locals 1
    .param p1, "field"    # I

    .line 999
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method getActualMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    .line 995
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getTimeInMillis()J
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method init(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 848
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 851
    return-void
.end method

.method set(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 904
    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 906
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 907
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    goto :goto_0

    .line 911
    :cond_0
    iput v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 912
    iput p2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 913
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 915
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 917
    :goto_0
    return-void
.end method

.method set(IIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .line 923
    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 925
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 926
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 927
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 928
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    goto :goto_0

    .line 932
    :cond_0
    iput v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 933
    iput p2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 934
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 935
    iput p4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->hour:I

    .line 936
    iput p5, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->minute:I

    .line 938
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 940
    :goto_0
    return-void
.end method

.method setTimeInMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    .line 874
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 877
    return-void
.end method

.method public setWith(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V
    .locals 3
    .param p1, "other"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 854
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 856
    iget v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->year:I

    .line 857
    iget v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->month:I

    .line 858
    iget v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->day:I

    .line 859
    iget v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->hour:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->hour:I

    .line 860
    iget v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->minute:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->minute:I

    .line 862
    iget-boolean v0, p1, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->isIncomplete:Z

    .line 863
    return-void
.end method
