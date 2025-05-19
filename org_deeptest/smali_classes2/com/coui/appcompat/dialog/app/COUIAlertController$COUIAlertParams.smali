.class public Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;
.super Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIAlertParams"
.end annotation


# instance fields
.field public mSummaryColumn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 700
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 701
    return-void
.end method

.method private setAdapter(Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 713
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 715
    new-instance v9, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mMultiChoiceItemLayout:I

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZLcom/coui/appcompat/dialog/app/AlertController;)V

    iput-object v9, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 729
    :cond_0
    new-instance v10, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    iget v4, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaryColumn:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    move-object v0, v10

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/coui/appcompat/dialog/app/AlertController;)V

    iput-object v10, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 738
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_3

    .line 739
    iget v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mSingleChoiceItemLayout:I

    .line 740
    .local v0, "layout":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 741
    new-instance v7, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaryColumn:Ljava/lang/String;

    move-object v1, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 742
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    .line 743
    new-instance v1, Lcom/coui/appcompat/widget/ChoiceListAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/coui/appcompat/widget/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v1, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 747
    .end local v0    # "layout":I
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_4

    .line 748
    iget-object v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams$3;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;Lcom/coui/appcompat/dialog/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 769
    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 1
    .param p1, "dialog"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 705
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->apply(Lcom/coui/appcompat/dialog/app/AlertController;)V

    .line 706
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 707
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->setAdapter(Lcom/coui/appcompat/dialog/app/AlertController;)V

    .line 709
    :cond_1
    return-void
.end method
