.class public Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
.super Ljava/lang/Object;
.source "COUISecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mButtonNegativeString:Ljava/lang/String;

.field private mButtonPositiveString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasCheckBox:Z

.field private mIsChecked:Z

.field private mIsShowStatementText:Z

.field private mLinkId:I

.field private mMessage:Ljava/lang/String;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

.field private mStatementId:I

.field private mTheme:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mHasCheckBox:Z

    .line 108
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 126
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mHasCheckBox:Z

    .line 108
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 138
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    .local v0, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 140
    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mTheme:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    .line 92
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsChecked:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$layout;->coui_security_alert_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$402(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 147
    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->coui_security_alertdailog_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$502(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->coui_security_alertdialog_statement:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$602(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->coui_security_alertdailog_checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$702(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    .line 151
    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mLinkId:I

    .line 152
    return-void
.end method

.method private relayoutMessageView()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 518
    return-void
.end method


# virtual methods
.method public create()Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .locals 14

    .line 370
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsShowStatementText:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :goto_0
    const-string v0, ""

    .line 377
    .local v0, "linkString":Ljava/lang/String;
    const-string v3, ""

    .line 378
    .local v3, "statementString":Ljava/lang/String;
    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mLinkId:I

    if-gtz v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v5, Lcoui/support/appcompat/R$string;->coui_security_alertdailog_privacy:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mLinkId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_1
    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v6, Lcoui/support/appcompat/R$string;->coui_security_alertdailog_statement:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 387
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 390
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 391
    .local v4, "termsIndex":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 393
    .local v5, "termsLength":I
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 395
    .local v6, "ss":Landroid/text/SpannableStringBuilder;
    new-instance v7, Lcom/coui/appcompat/widget/COUIClickableSpan;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/coui/appcompat/widget/COUIClickableSpan;-><init>(Landroid/content/Context;)V

    .line 396
    .local v7, "span":Lcom/coui/appcompat/widget/COUIClickableSpan;
    new-instance v8, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$2;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$2;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/COUIClickableSpan;->setStatusBarClickListener(Lcom/coui/appcompat/widget/COUIClickableSpan$SpannableStrClickListener;)V

    .line 405
    add-int v8, v4, v5

    const/16 v9, 0x21

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 406
    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v8}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 407
    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v8}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v8}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 410
    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcoui/support/appcompat/R$dimen;->TD05:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 411
    .local v8, "textSize":I
    const/4 v9, 0x5

    .line 412
    .local v9, "scaleLevel":I
    iget-object v10, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->fontScale:F

    .line 413
    .local v10, "fontScale":F
    int-to-float v11, v8

    invoke-static {v11, v10, v9}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v11

    float-to-int v8, v11

    .line 414
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v11}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    int-to-float v12, v8

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 416
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v11}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    new-instance v12, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;

    invoke-direct {v12, p0, v4, v5}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;II)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 447
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v11}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcoui/support/appcompat/R$dimen;->TD07:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    .line 448
    invoke-static {v11, v10, v9}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v11

    float-to-int v8, v11

    .line 453
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v11}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v11

    int-to-float v12, v8

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 454
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->relayoutMessageView()V

    .line 455
    iget-boolean v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mHasCheckBox:Z

    if-eqz v11, :cond_3

    .line 456
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-boolean v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsChecked:Z

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v11, Lcoui/support/appcompat/R$dimen;->TD05:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 458
    invoke-static {v1, v10, v9}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    float-to-int v8, v1

    .line 463
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    int-to-float v11, v8

    invoke-virtual {v1, v2, v11}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 464
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v11, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$4;

    invoke-direct {v11, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$4;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 475
    :cond_3
    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v11}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 478
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    new-instance v11, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v13, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mTheme:I

    invoke-direct {v11, v12, v13}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v12}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v13, Lcoui/support/appcompat/R$string;->coui_allow_text:I

    .line 480
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_4
    new-instance v13, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$6;

    invoke-direct {v13, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$6;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    .line 479
    invoke-virtual {v11, v12, v13}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iget-object v12, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    sget v13, Lcoui/support/appcompat/R$string;->coui_reject_text:I

    .line 490
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_5
    new-instance v13, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$5;

    invoke-direct {v13, p0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$5;-><init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V

    .line 489
    invoke-virtual {v11, v12, v13}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v11

    .line 499
    invoke-virtual {v11, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setCancelable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v2

    iget-object v11, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v11}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v2

    .line 478
    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$102(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUIAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    .line 501
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    return-object v1
.end method

.method public getSecurityAlertDialog()Landroid/app/Dialog;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setCheckBoxString(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "chkResId"    # I

    .line 282
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(I)V

    .line 283
    return-object p0
.end method

.method public setCheckBoxString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "chkString"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-object p0
.end method

.method public setChecked(Z)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "checked"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsChecked:Z

    .line 305
    return-object p0
.end method

.method public setCustomBackgroundColor(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 194
    iput p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mBackgroundColor:I

    .line 195
    return-object p0
.end method

.method public setHasCheckBox(Z)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "hasCheckBox"    # Z

    .line 293
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mHasCheckBox:Z

    .line 294
    return-object p0
.end method

.method public setMessage(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "msgResId"    # I

    .line 216
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mMessage:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setNegativeString(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "negStrResId"    # I

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public setNegativeString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "negString"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonNegativeString:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setOnLinkTextClickListener(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

    .line 360
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$802(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

    .line 361
    return-object p0
.end method

.method public setOnSelectedListener(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    .line 349
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mSecurityAlertDialog:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$302(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    .line 350
    return-object p0
.end method

.method public setPositiveString(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "posResId"    # I

    .line 260
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public setPositiveString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "posString"    # Ljava/lang/String;

    .line 249
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mButtonPositiveString:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setShowStatementText(Z)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "isShow"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mIsShowStatementText:Z

    .line 339
    return-object p0
.end method

.method public setStatementLinkString(II)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 3
    .param p1, "statementId"    # I
    .param p2, "linkId"    # I

    .line 317
    const/4 v0, -0x1

    if-gtz p1, :cond_0

    .line 318
    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    goto :goto_1

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "setStatementStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    iput p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    goto :goto_1

    .line 322
    :cond_2
    :goto_0
    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mStatementId:I

    .line 327
    .end local v1    # "setStatementStr":Ljava/lang/String;
    :goto_1
    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mLinkId:I

    .line 328
    return-object p0
.end method

.method public setTitle(I)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 1
    .param p1, "titleResId"    # I

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->mTitle:Ljava/lang/String;

    .line 171
    return-object p0
.end method
