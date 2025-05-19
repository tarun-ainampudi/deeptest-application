.class Landroidx/widget/COUIDrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "COUIDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/COUIDrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroidx/widget/COUIDrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    .line 2378
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback$1;->this$1:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2381
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout$ViewDragCallback$1;->this$1:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->peekDrawer()V

    .line 2382
    return-void
.end method
