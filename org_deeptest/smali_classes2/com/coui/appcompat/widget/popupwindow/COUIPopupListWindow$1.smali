.class Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;
.super Ljava/lang/Object;
.source "COUIPopupListWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    .line 85
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->access$100(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;)V

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->access$002(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;Z)Z

    .line 95
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 99
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;->access$002(Lcom/coui/appcompat/widget/popupwindow/COUIPopupListWindow;Z)Z

    .line 89
    return-void
.end method
