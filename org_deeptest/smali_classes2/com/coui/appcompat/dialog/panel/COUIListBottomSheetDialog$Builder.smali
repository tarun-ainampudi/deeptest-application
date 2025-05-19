.class public Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "COUIListBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mFinalNavColorAfterDismiss:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mIsExecuteNavColorAnimAfterDismiss:Z

.field private mIsMultiChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayout:Landroid/view/View;

.field private mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnMenuItemClick:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

.field public mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 87
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v0, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    .line 51
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_list_bottom_sheet_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mLayout:Landroid/view/View;

    .line 94
    return-void
.end method


# virtual methods
.method public createDialog()Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
    .locals 14

    .line 310
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    new-instance v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v3, Lcoui/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$002(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsExecuteNavColorAnimAfterDismiss:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setExecuteNavColorAnimAfterDismiss(Z)V

    .line 313
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mFinalNavColorAfterDismiss:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->setFinalNavColorAfterDismiss(I)V

    .line 314
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$id;->select_dialog_listview:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 315
    .local v0, "listView":Landroidx/recyclerview/widget/COUIRecyclerView;
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, "manager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 317
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 318
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 319
    iget-object v3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$id;->toolbar:I

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 320
    .local v3, "toolbar":Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    .line 324
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    if-eqz v2, :cond_0

    .line 325
    sget v2, Lcoui/support/appcompat/R$menu;->edit_text_preference_dialog_menu:I

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->inflateMenu(I)V

    .line 326
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$id;->menu_save:I

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 327
    .local v2, "saveItem":Landroid/view/MenuItem;
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$id;->menu_cancel:I

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 328
    .local v4, "cancelItem":Landroid/view/MenuItem;
    new-instance v5, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$1;-><init>(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 337
    new-instance v5, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;-><init>(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 346
    new-instance v5, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v8, Lcoui/support/appcompat/R$layout;->coui_select_dialog_multichoice:I

    iget-object v9, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v11, -0x1

    iget-object v12, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 v13, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    move-object v2, v5

    .line 347
    .end local v4    # "cancelItem":Landroid/view/MenuItem;
    .local v2, "adapter":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
    goto :goto_0

    .line 348
    .end local v2    # "adapter":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
    :cond_0
    new-instance v2, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v6, Lcoui/support/appcompat/R$layout;->coui_select_dialog_singlechoice:I

    iget-object v7, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    iget v9, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V

    .line 350
    .restart local v2    # "adapter":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 352
    new-instance v4, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$3;-><init>(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)V

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter;->setOnItemClickListener(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;)V

    .line 367
    iget-object v4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    return-object v4
.end method

.method public getBottomSheetDialog()Landroid/app/Dialog;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    move-result-object v0

    return-object v0
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .param p1, "isExecuteNavColorAnimAfterDismiss"    # Z

    .line 290
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsExecuteNavColorAnimAfterDismiss:Z

    .line 291
    return-object p0
.end method

.method public setFinalNavColorAfterDismiss(I)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 300
    iput p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mFinalNavColorAfterDismiss:I

    .line 301
    return-object p0
.end method

.method public setMenuItemClickListener(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

    .line 280
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnMenuItemClick:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

    .line 281
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMultiChoiceItems(I[ZILandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "summariesId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 174
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 177
    iput-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 178
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 139
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 140
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 142
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 143
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 148
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 149
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 151
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 152
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[Z[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 199
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 200
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 202
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 203
    iput-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 204
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSingleChoiceItems(IIILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "summariesId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 241
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 242
    iput-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 243
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 246
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 210
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 211
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 213
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 218
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 219
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 220
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 222
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 264
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 265
    iput-object p4, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 268
    iput-object p3, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 269
    return-object p0
.end method

.method public setSummaries(I)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 124
    return-object p0
.end method

.method public setSummaries([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .param p1, "summaries"    # [Ljava/lang/CharSequence;

    .line 133
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 134
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setTitle(I)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 1
    .param p1, "titleResId"    # I

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 114
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 107
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 108
    return-object p0
.end method
