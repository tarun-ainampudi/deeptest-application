.class public Lcom/coui/appcompat/widget/COUIAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "COUIAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 417
    iput p2, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterContextMenuInfo;->position:I

    .line 418
    iput-wide p3, p0, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterContextMenuInfo;->id:J

    .line 419
    return-void
.end method
