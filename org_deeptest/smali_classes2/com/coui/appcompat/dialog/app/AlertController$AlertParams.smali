.class public Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mChangeable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDialogType:I

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mMessageNeedScroll:Z

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mSummaries:[Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconId:I

    .line 1009
    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1131
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1147
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1213
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1214
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCancelable:Z

    .line 1215
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1216
    return-void
.end method

.method private createListView(Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 1299
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mListLayout:I

    .line 1300
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    .line 1303
    .local v0, "listView":Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1305
    new-instance v10, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v10

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$1;-><init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;)V

    goto/16 :goto_1

    .line 1320
    :cond_0
    new-instance v10, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$2;-><init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/coui/appcompat/dialog/app/AlertController$RecycleListView;Lcom/coui/appcompat/dialog/app/AlertController;)V

    goto :goto_1

    .line 1347
    :cond_1
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_4

    .line 1348
    iget v1, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1349
    .local v1, "layout":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v2, :cond_2

    .line 1350
    new-instance v10, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v2, v6, v8

    new-array v7, v9, [I

    aput v3, v7, v8

    move-object v2, v10

    move-object v3, v4

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    .line 1353
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 1355
    :cond_3
    new-instance v2, Lcom/coui/appcompat/dialog/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/coui/appcompat/dialog/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .end local v1    # "layout":I
    .local v2, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    move-object v1, v2

    .line 1357
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1360
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_5

    .line 1361
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    .line 1362
    .local v4, "hasTitle":Z
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 1363
    .local v5, "hasMessage":Z
    new-instance v1, Lcom/coui/appcompat/widget/SummaryAdapter;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mSummaries:[Ljava/lang/CharSequence;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/widget/SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 1364
    .end local v4    # "hasTitle":Z
    .end local v5    # "hasMessage":Z
    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1365
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1370
    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_6

    .line 1371
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v2, v0}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1377
    :cond_6
    iput-object v1, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1378
    iget v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCheckedItem:I

    iput v2, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mCheckedItem:I

    .line 1380
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_7

    .line 1381
    new-instance v2, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$3;-><init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Lcom/coui/appcompat/dialog/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1390
    :cond_7
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_8

    .line 1391
    new-instance v2, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams$4;-><init>(Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;Lcom/coui/appcompat/dialog/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1404
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_9

    .line 1405
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1419
    :cond_9
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_a

    .line 1420
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_alert_dialog_item_background:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setSelector(I)V

    .line 1421
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    .line 1422
    invoke-virtual {v0, v9}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    .line 1423
    :cond_a
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_b

    .line 1424
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_alert_dialog_item_background:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setSelector(I)V

    .line 1425
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    .line 1426
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1429
    :cond_b
    :goto_3
    iput-object v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1430
    return-void
.end method


# virtual methods
.method public apply(Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 7
    .param p1, "dialog"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 1224
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 1234
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(I)V

    .line 1236
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 1237
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(I)V

    .line 1242
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mMessageNeedScroll:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageNeedScroll:Z

    .line 1245
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1246
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1248
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1249
    :cond_6
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1252
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 1253
    :cond_8
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1256
    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1257
    :cond_a
    const/4 v2, -0x3

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 1262
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 1263
    :cond_c
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->createListView(Lcom/coui/appcompat/dialog/app/AlertController;)V

    .line 1265
    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1266
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_e

    .line 1267
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/dialog/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1270
    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1272
    :cond_f
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_10

    .line 1273
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setView(I)V

    .line 1276
    :cond_10
    :goto_1
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mDialogType:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/AlertController;->setDialogType(I)V

    .line 1280
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mIsSingleChoice:Z

    .line 1281
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mIsMultiChoice:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mIsMultiChoice:Z

    .line 1286
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;->mChangeable:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/dialog/app/AlertController;->mChangeable:Z

    .line 1296
    return-void
.end method
