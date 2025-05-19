.class public Lcom/coui/appcompat/dialog/app/COUIListDialog;
.super Ljava/lang/Object;
.source "COUIListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/COUIListDialog$ViewHolder;,
        Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mCustomRes:I

.field private mCustomView:Landroid/view/View;

.field private mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

.field private mHasCustom:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTextAppearances:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIListDialog;

    .line 39
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIListDialog;

    .line 39
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIListDialog;

    .line 39
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_list_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "layout":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->setupMessage(Landroid/view/View;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->setupCustomPanel(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mItems:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->setupListPanel(Landroid/view/View;)V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 158
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v1

    .line 159
    .local v1, "dialog":Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    return-object v1
.end method

.method private getAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mTextAppearances:[I

    invoke-direct {v0, v1, v2, v3}, Lcom/coui/appcompat/dialog/app/COUIListDialog$Adapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    return-object v0
.end method

.method private setupCustomPanel(Landroid/view/View;)V
    .locals 4
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 223
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mHasCustom:Z

    if-eqz v0, :cond_1

    .line 224
    sget v0, Lcoui/support/appcompat/R$id;->custom_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 225
    .local v0, "customPanel":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mCustomRes:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "customView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    .end local v0    # "customPanel":Landroid/widget/FrameLayout;
    .end local v1    # "customView":Landroid/view/View;
    :cond_1
    :goto_0
    return-void
.end method

.method private setupListPanel(Landroid/view/View;)V
    .locals 2
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 235
    sget v0, Lcoui/support/appcompat/R$id;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 236
    .local v0, "listView":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIListDialog$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    :cond_0
    return-void
.end method

.method private setupMessage(Landroid/view/View;)V
    .locals 3
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 198
    sget v0, Lcoui/support/appcompat/R$id;->message_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessageView:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    sget v0, Lcoui/support/appcompat/R$id;->list_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "divider":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIListDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 220
    .end local v0    # "divider":Landroid/view/View;
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->cancel()V

    .line 167
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->dismiss()V

    .line 174
    :cond_0
    return-void
.end method

.method public getDialog()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 259
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 260
    return-object p0
.end method

.method public setCustomView(I)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 1
    .param p1, "layout"    # I

    .line 122
    iput p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mCustomRes:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mHasCustom:Z

    .line 124
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 1
    .param p1, "customView"    # Landroid/view/View;

    .line 134
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mCustomView:Landroid/view/View;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mHasCustom:Z

    .line 136
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "textAppearances"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mItems:[Ljava/lang/CharSequence;

    .line 88
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mTextAppearances:[I

    .line 89
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 111
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mMessage:Ljava/lang/CharSequence;

    .line 112
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIListDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mBuilder:Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 101
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog;->mDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->show()V

    .line 148
    return-void
.end method
