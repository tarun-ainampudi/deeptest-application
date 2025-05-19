.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "COUIBottomSheetChoiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

.field itemText:Landroid/widget/TextView;

.field mLayout:Landroid/view/View;

.field radioButton:Landroid/widget/RadioButton;

.field summaryText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemView"    # Landroid/view/View;

    .line 151
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 152
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 153
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    .line 154
    sget v0, Lcoui/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    .line 155
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget v0, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUICheckBox;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    goto :goto_0

    .line 158
    :cond_0
    sget v0, Lcoui/support/appcompat/R$id;->radio_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 160
    :goto_0
    invoke-static {p1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_list_selector_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    .line 162
    return-void
.end method
