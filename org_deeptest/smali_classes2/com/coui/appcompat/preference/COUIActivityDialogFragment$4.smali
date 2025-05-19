.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;
.super Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;
.source "COUIActivityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "objects"    # [Ljava/lang/CharSequence;

    .line 163
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iput-object p6, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$list:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$100(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 178
    :cond_0
    sget v1, Lcoui/support/appcompat/R$id;->itemdiver:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "diver":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->getCount()I

    move-result v3

    .line 180
    .local v3, "groupSize":I
    if-eqz v1, :cond_3

    .line 181
    if-eq v3, v2, :cond_2

    add-int/lit8 v2, v3, -0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_divider_preference_default:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_3
    :goto_1
    return-object v0
.end method
