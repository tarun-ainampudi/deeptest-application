.class Lcom/coui/appcompat/widget/COUIDatePicker$Format;
.super Ljava/lang/Object;
.source "COUIDatePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Format"
.end annotation


# instance fields
.field mId:I

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIDatePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIDatePicker;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIDatePicker;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 987
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput p2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mId:I

    .line 989
    iput-object p3, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mTag:Ljava/lang/String;

    .line 990
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # I

    .line 994
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mTag:Ljava/lang/String;

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$1600(Lcom/coui/appcompat/widget/COUIDatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 997
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    new-instance v0, Ljava/util/Formatter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$1700(Lcom/coui/appcompat/widget/COUIDatePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 999
    .local v0, "fmt":Ljava/util/Formatter;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mTag:Ljava/lang/String;

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1000
    const-string v1, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1001
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mTag:Ljava/lang/String;

    const-string v4, "DAY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    const-string v1, "%02d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1005
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1008
    .end local v0    # "fmt":Ljava/util/Formatter;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker$Format;->mId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
