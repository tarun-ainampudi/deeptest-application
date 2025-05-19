.class Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Lcom/coui/appcompat/widget/COUIBaseSpinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$1;

    .line 907
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 920
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 979
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 955
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelection(I)V

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->dismiss()V

    .line 960
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 927
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 928
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 964
    const-string v0, "COUIBaseSpinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 974
    const-string v0, "COUIBaseSpinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 931
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 932
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 969
    const-string v0, "COUIBaseSpinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 939
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 940
    return-void

    .line 942
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 943
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 944
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 946
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    .line 947
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getSelectedItemPosition()I

    move-result v2

    .line 946
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 948
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 950
    .local v1, "listView":Landroid/widget/ListView;
    invoke-static {v1, p2}, Lcom/coui/appcompat/widget/COUIViewCompat;->setTextAlignment(Landroid/view/View;I)V

    .line 951
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 952
    return-void
.end method
