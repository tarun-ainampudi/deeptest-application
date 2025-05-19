.class public Lcom/coui/appcompat/widget/ChoiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChoiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    }
.end annotation


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

.field private mContext:Landroid/content/Context;

.field private mIsMultiChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayoutResId:I

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "items"    # [Ljava/lang/CharSequence;
    .param p4, "summaries"    # [Ljava/lang/CharSequence;

    .line 39
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "items"    # [Ljava/lang/CharSequence;
    .param p4, "summaries"    # [Ljava/lang/CharSequence;
    .param p5, "checkboxStates"    # [Z
    .param p6, "isMultiChoice"    # Z

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mIsMultiChoice:Z

    .line 27
    iput-object p1, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mLayoutResId:I

    .line 29
    iput-object p3, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 30
    iput-object p4, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 31
    iput-boolean p6, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mIsMultiChoice:Z

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    .line 33
    if-eqz p5, :cond_0

    .line 34
    invoke-direct {p0, p5}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->initCheckboxStates([Z)V

    .line 36
    :cond_0
    return-void
.end method

.method private initCheckboxStates([Z)V
    .locals 3
    .param p1, "checkboxStates"    # [Z

    .line 53
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 54
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .line 112
    return p1
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 43
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 47
    return-object v1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 78
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 79
    new-instance v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;-><init>()V

    .line 80
    .local v1, "viewHolder":Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mLayoutResId:I

    invoke-virtual {v2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    .line 82
    sget v2, Lcoui/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    .line 83
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v2, :cond_0

    .line 84
    sget v2, Lcoui/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUICheckBox;

    iput-object v2, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    goto :goto_0

    .line 86
    :cond_0
    sget v2, Lcoui/support/appcompat/R$id;->radio_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 88
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    .end local v1    # "viewHolder":Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;

    .line 93
    .restart local v1    # "viewHolder":Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    :goto_1
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    move v2, v0

    .line 95
    .local v2, "state":I
    :goto_2
    iget-object v3, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 98
    .end local v2    # "state":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, "item":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ChoiceListAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 100
    .local v3, "summary":Ljava/lang/CharSequence;
    iget-object v4, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    iget-object v0, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 104
    :cond_4
    iget-object v4, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, v1, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_3
    return-object p2
.end method

.method public setCheckboxState(IILandroid/widget/ListView;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "pos"    # I
    .param p3, "listView"    # Landroid/widget/ListView;

    .line 116
    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 117
    .local v0, "visiblePosition":I
    sub-int v1, p2, v0

    .line 118
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 119
    invoke-virtual {p3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;

    .line 121
    .local v3, "holder":Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    iget-object v4, v3, Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 122
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/ChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/coui/appcompat/widget/ChoiceListAdapter$ViewHolder;
    :cond_1
    :goto_0
    return-void
.end method
