.class Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
.super Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;
.source "COUIBaseSpinner.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 1000
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    .line 1001
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1004
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setModal(Z)V

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 1007
    new-instance v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$1;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;Lcom/coui/appcompat/widget/COUIBaseSpinner;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1018
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 993
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$301(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 993
    invoke-super {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 8

    .line 1036
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1037
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1038
    .local v1, "hOffset":I
    if-eqz v0, :cond_1

    .line 1039
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1040
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    .line 1041
    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 1043
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1046
    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getPaddingLeft()I

    move-result v2

    .line 1047
    .local v2, "spinnerPaddingLeft":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getPaddingRight()I

    move-result v3

    .line 1048
    .local v3, "spinnerPaddingRight":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getWidth()I

    move-result v4

    .line 1049
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget v5, v5, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 1050
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    .line 1051
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1050
    invoke-virtual {v5, v6, v7}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1052
    .local v5, "contentWidth":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1053
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 1054
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_2

    .line 1055
    move v5, v6

    .line 1057
    :cond_2
    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setContentWidth(I)V

    .line 1059
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget v5, v5, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1060
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 1062
    :cond_4
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget v5, v5, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setContentWidth(I)V

    .line 1064
    :goto_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v5}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1065
    sub-int v5, v4, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_3

    .line 1067
    :cond_5
    add-int/2addr v1, v2

    .line 1069
    :goto_3
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 1070
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1022
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 1024
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1032
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1033
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 1073
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 1075
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->computeContentWidth()V

    .line 1077
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1078
    invoke-super {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;->show()V

    .line 1079
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1080
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1082
    invoke-static {v1, p2}, Lcom/coui/appcompat/widget/COUIViewCompat;->setTextAlignment(Landroid/view/View;I)V

    .line 1083
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setSelection(I)V

    .line 1085
    if-eqz v0, :cond_0

    .line 1088
    return-void

    .line 1094
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1095
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_1

    .line 1096
    new-instance v3, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V

    .line 1110
    .local v3, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1111
    new-instance v4, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setOnDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;)V

    .line 1121
    .end local v3    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    return-void
.end method
