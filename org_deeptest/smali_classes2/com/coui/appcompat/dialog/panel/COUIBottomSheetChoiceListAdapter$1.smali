.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;
.super Ljava/lang/Object;
.source "COUIBottomSheetChoiceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->onBindViewHolder(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

.field final synthetic val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 115
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iput p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "state":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUICheckBox;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 126
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    goto :goto_2

    .line 128
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 129
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-interface {v1, p1, v2, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    .line 130
    return-void

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 133
    .local v1, "stateRadio":Z
    xor-int/lit8 v2, v1, 0x1

    move v0, v2

    .line 134
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->notifyItemChanged(I)V

    .line 136
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    iget v3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$202(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;I)I

    .line 138
    .end local v1    # "stateRadio":Z
    :goto_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-interface {v1, p1, v2, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    .line 139
    return-void
.end method
