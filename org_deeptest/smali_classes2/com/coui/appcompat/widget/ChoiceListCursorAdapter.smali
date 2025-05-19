.class public Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "ChoiceListCursorAdapter.java"


# instance fields
.field private mCheckBoxStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckedColumn:Ljava/lang/String;

.field private mIsCheckedIndex:I

.field private mIsMultiChoice:Z

.field private mLabelColumn:Ljava/lang/String;

.field private mLabelIndex:I

.field private mLayoutResId:I

.field private mSummaryColumn:Ljava/lang/String;

.field private mSummaryIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    .line 23
    iput v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "layoutResId"    # I
    .param p4, "labelColumn"    # Ljava/lang/String;
    .param p5, "summaryColumn"    # Ljava/lang/String;

    .line 30
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "layoutResId"    # I
    .param p4, "labelColumn"    # Ljava/lang/String;
    .param p5, "isCheckedColumn"    # Ljava/lang/String;
    .param p6, "summaryColumn"    # Ljava/lang/String;
    .param p7, "isMultiChoice"    # Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 35
    iput-boolean p7, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    .line 36
    iput-object p4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLabelColumn:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsCheckedColumn:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLayoutResId:I

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    .line 42
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLabelIndex:I

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryIndex:I

    .line 48
    :cond_0
    if-eqz p7, :cond_4

    .line 49
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    .line 50
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    :cond_4
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 73
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "item":Landroid/widget/TextView;
    sget v1, Lcoui/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "summary":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 77
    .local v2, "state1":I
    :goto_0
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    if-eqz v4, :cond_1

    .line 78
    sget v4, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/COUICheckBox;

    .line 79
    .local v4, "checkBox":Lcom/coui/appcompat/widget/COUICheckBox;
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 82
    .end local v4    # "checkBox":Lcom/coui/appcompat/widget/COUICheckBox;
    :cond_1
    iget v4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLabelIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 84
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget v3, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mSummaryIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setCheckboxState(IILandroid/widget/ListView;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "pos"    # I
    .param p3, "listView"    # Landroid/widget/ListView;

    .line 93
    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 94
    .local v0, "visiblePosition":I
    sub-int v1, p2, v0

    .line 95
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 96
    invoke-virtual {p3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "view":Landroid/view/View;
    sget v3, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUICheckBox;

    .line 98
    .local v3, "checkBox":Lcom/coui/appcompat/widget/COUICheckBox;
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 99
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "checkBox":Lcom/coui/appcompat/widget/COUICheckBox;
    :cond_1
    :goto_0
    return-void
.end method
