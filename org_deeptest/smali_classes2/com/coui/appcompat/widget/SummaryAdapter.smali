.class public Lcom/coui/appcompat/widget/SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SummaryAdapter.java"


# static fields
.field private static final LAYOUT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasMessage:Z

.field private mHasTitle:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget v0, Lcoui/support/appcompat/R$layout;->coui_alert_dialog_summary_item:I

    sput v0, Lcom/coui/appcompat/widget/SummaryAdapter;->LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasTitle"    # Z
    .param p3, "hasMessage"    # Z
    .param p4, "items"    # [Ljava/lang/CharSequence;
    .param p5, "summaries"    # [Ljava/lang/CharSequence;

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-boolean p2, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasTitle:Z

    .line 54
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasMessage:Z

    .line 55
    iput-object p1, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p4, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 57
    iput-object p5, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 58
    return-void
.end method

.method private resetPadding(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, "paddingOffset":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 81
    .local v1, "paddingTop":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 82
    .local v2, "paddingLeft":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 83
    .local v3, "paddingBottom":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 84
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SummaryAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SummaryAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne p1, v5, :cond_0

    .line 86
    add-int v5, v3, v0

    invoke-virtual {p2, v2, v1, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v5, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasTitle:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasMessage:Z

    if-nez v5, :cond_4

    .line 89
    if-nez p1, :cond_1

    .line 90
    add-int v5, v1, v0

    invoke-virtual {p2, v2, v5, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/SummaryAdapter;->getCount()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 97
    iget-boolean v5, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasTitle:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mHasMessage:Z

    if-nez v5, :cond_3

    .line 98
    add-int v5, v1, v0

    add-int v6, v3, v0

    invoke-virtual {p2, v2, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 101
    :cond_3
    add-int v5, v3, v0

    invoke-virtual {p2, v2, v1, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 105
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 134
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    return-object v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 127
    return-object v1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Lcom/coui/appcompat/widget/SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coui/appcompat/widget/SummaryAdapter;->LAYOUT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "itemView":Landroid/widget/TextView;
    sget v1, Lcoui/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 66
    .local v3, "item":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/SummaryAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 67
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/SummaryAdapter;->resetPadding(ILandroid/view/View;)V

    .line 75
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .line 139
    const/4 v0, 0x1

    return v0
.end method
