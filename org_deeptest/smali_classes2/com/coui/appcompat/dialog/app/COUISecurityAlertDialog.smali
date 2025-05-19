.class public Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
.super Ljava/lang/Object;
.source "COUISecurityAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;,
        Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;,
        Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUISecurityAlertDialog"


# instance fields
.field private mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mLayout:Landroid/view/View;

.field private mMsgTextView:Landroid/widget/TextView;

.field private mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

.field private mOnSelectedListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

.field private mStatementTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUIAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mOnSelectedListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mOnSelectedListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mMsgTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mMsgTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mStatementTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mStatementTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

    .line 50
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnLinkTextClickListener;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->dismiss()V

    .line 549
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->mAlertDialog:Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->show()V

    .line 540
    :cond_0
    return-void
.end method
