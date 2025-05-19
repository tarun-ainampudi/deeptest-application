.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDismissRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;

    .line 1269
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonSlideIn(I)V

    .line 1273
    return-void
.end method
