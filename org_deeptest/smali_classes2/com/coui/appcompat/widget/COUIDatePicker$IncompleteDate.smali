.class Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source "COUIDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncompleteDate"
.end annotation


# instance fields
.field private date:Ljava/util/Calendar;

.field private isIncomplete:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    .line 847
    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 835
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public after(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .line 945
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 948
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public before(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .line 938
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 941
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;

    .line 960
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 963
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 964
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 967
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 968
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 971
    :cond_1
    :goto_0
    return-void
.end method

.method clampDay(I)I
    .locals 2
    .param p1, "day"    # I

    .line 974
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 975
    .local v0, "days":I
    if-le p1, v0, :cond_0

    .line 976
    return v0

    .line 978
    :cond_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    .line 935
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    .line 868
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0

    .line 871
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0

    .line 873
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0

    .line 875
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 876
    const/high16 v0, -0x80000000

    return v0

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getActualMaximum(I)I
    .locals 1
    .param p1, "field"    # I

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method getActualMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    .line 952
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 890
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v0, :cond_1

    .line 891
    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    .line 892
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    .line 894
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 895
    .local v3, "oldMonth":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 897
    .local v4, "oldDay":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 898
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v5, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 899
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 900
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 901
    .end local v3    # "oldMonth":I
    .end local v4    # "oldDay":I
    goto :goto_0

    .line 902
    :cond_0
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    .line 904
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 905
    .local v0, "oldMonth":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 907
    .local v3, "oldDay":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 908
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/16 v5, 0x7e4

    invoke-virtual {v4, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 909
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 910
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 911
    .end local v0    # "oldMonth":I
    .end local v3    # "oldDay":I
    goto :goto_0

    .line 912
    :cond_1
    if-ne p1, v1, :cond_2

    .line 913
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 914
    .local v3, "oldYear":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 916
    .restart local v4    # "oldDay":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 917
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v5, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 918
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 919
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 921
    .end local v3    # "oldYear":I
    .end local v4    # "oldDay":I
    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 922
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clampDay(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 924
    :cond_3
    :goto_0
    return-void
.end method

.method public set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 927
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 928
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 929
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 930
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 1
    .param p1, "millis"    # J

    .line 863
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    .line 865
    return-void
.end method

.method public setWith(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V
    .locals 3
    .param p1, "other"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 850
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 851
    iget-boolean v0, p1, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->isIncomplete:Z

    .line 852
    return-void
.end method
