.class Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "COUINumberPicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0

    .line 2020
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 2017
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 2021
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 2022
    .local p1, "locale":Ljava/util/Locale;
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 2023
    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2043
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2026
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 2027
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .line 2036
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2037
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2038
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2039
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
