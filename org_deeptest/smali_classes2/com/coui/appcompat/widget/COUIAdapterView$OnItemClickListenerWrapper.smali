.class Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;
.super Ljava/lang/Object;
.source "COUIAdapterView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnItemClickListenerWrapper"
.end annotation


# instance fields
.field private final mWrappedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIAdapterView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIAdapterView;Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIAdapterView;
    .param p2, "listener"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 267
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.OnItemClickListenerWrapper;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;->mWrappedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 269
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.OnItemClickListenerWrapper;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;->mWrappedListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListenerWrapper;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;->onItemClick(Lcom/coui/appcompat/widget/COUIAdapterView;Landroid/view/View;IJ)V

    .line 274
    return-void
.end method
