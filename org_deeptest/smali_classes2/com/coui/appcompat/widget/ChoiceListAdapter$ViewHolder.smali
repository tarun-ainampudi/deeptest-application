.class Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChoiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ChoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

.field itemText:Landroid/widget/TextView;

.field radioButton:Landroid/widget/RadioButton;

.field summaryText:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
