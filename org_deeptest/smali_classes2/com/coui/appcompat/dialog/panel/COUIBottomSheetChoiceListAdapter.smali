.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "COUIBottomSheetChoiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;,
        Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;",
        ">;"
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

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mIsMultiChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayoutResId:I

.field private mOnItemClickListener:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "items"    # [Ljava/lang/CharSequence;
    .param p4, "summaries"    # [Ljava/lang/CharSequence;
    .param p5, "checkedItem"    # I

    .line 46
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "items"    # [Ljava/lang/CharSequence;
    .param p4, "summaries"    # [Ljava/lang/CharSequence;
    .param p5, "checkedItem"    # I
    .param p6, "checkboxStates"    # [Z
    .param p7, "isMultiChoice"    # Z

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    .line 33
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mLayoutResId:I

    .line 35
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 36
    iput-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 37
    iput-boolean p7, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    .line 39
    iput p5, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    .line 40
    if-eqz p6, :cond_0

    .line 41
    invoke-direct {p0, p6}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->initCheckboxStates([Z)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 21
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 21
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 21
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 21
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    .line 21
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCheckboxStates([Z)V
    .locals 3
    .param p1, "checkboxStates"    # [Z

    .line 68
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 69
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 83
    .local v0, "count":I
    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->onBindViewHolder(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 95
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 97
    .local v0, "state":I
    :goto_0
    iget-object v2, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 98
    .end local v0    # "state":I
    goto :goto_2

    .line 99
    :cond_1
    iget-object v0, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    if-ne v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    :goto_2
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    .local v0, "item":Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v3, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    iget-object v1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object v3, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_3

    .line 111
    :cond_3
    iget-object v3, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    new-instance v3, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    .line 64
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    .line 65
    return-void
.end method
