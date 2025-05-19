.class Landroidx/widget/COUIDrawerLayout$1;
.super Ljava/lang/Object;
.source "COUIDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/widget/COUIDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/widget/COUIDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/widget/COUIDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/widget/COUIDrawerLayout;

    .line 413
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$1;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 416
    move-object v0, p1

    check-cast v0, Landroidx/widget/COUIDrawerLayout;

    .line 417
    .local v0, "drawerLayout":Landroidx/widget/COUIDrawerLayout;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1}, Landroidx/widget/COUIDrawerLayout;->setChildInsets(Ljava/lang/Object;Z)V

    .line 418
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
