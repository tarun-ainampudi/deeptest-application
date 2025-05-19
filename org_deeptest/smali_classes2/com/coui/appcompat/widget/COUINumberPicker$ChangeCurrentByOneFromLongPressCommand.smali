.class Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "COUINumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1831
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .line 1831
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .line 1835
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1836
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1840
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$500(Lcom/coui/appcompat/widget/COUINumberPicker;Z)V

    .line 1841
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$600(Lcom/coui/appcompat/widget/COUINumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1842
    return-void
.end method
