.class Lcom/coui/appcompat/widget/COUISpinner$1;
.super Ljava/lang/Object;
.source "COUISpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISpinner;->setTextSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISpinner;

    .line 353
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$1;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$1;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISpinner;->requestLayout()V

    .line 357
    return-void
.end method
