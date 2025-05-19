.class public Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
.super Ljava/lang/Object;
.source "COUIChangeableAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final ALPHA_IN_DELAY:J = 0x96L

.field private static final ALPHA_IN_DURATION:J = 0xfaL

.field private static final ALPHA_OUT_DURATION:J = 0x96L

.field private static final HEIGHT_DELAY:J = 0x96L

.field private static final HEIGHT_DURATION:J = 0xfaL


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mButDividerSize:I

.field private mButtonPanelEndHeight:I

.field private mCancelable:Z

.field private mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

.field private mContentEndHeight:I

.field private mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mContentStartHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCurCustomView:Landroid/view/View;

.field private mCurMessage:Ljava/lang/CharSequence;

.field private mCurNegButListener:Landroid/view/View$OnClickListener;

.field private mCurNegButtonStr:Ljava/lang/CharSequence;

.field private mCurNeuButListener:Landroid/view/View$OnClickListener;

.field private mCurNeuButtonStr:Ljava/lang/CharSequence;

.field private mCurPosButListener:Landroid/view/View$OnClickListener;

.field private mCurPosButtonStr:Ljava/lang/CharSequence;

.field private mCurTitle:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mHeightInterpolator:Landroid/view/animation/Interpolator;

.field private mHorButHorPadding:I

.field private mHorButPanelMinHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageContainerPaddingBottom:I

.field private mMessageContainerPaddingTop:I

.field private mNegButBg:Landroid/graphics/drawable/Drawable;

.field private mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mNegButListener:Landroid/view/View$OnClickListener;

.field private mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mNegButtonStr:Ljava/lang/CharSequence;

.field private mNeuButBg:Landroid/graphics/drawable/Drawable;

.field private mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mNeuButListener:Landroid/view/View$OnClickListener;

.field private mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mNeuButtonStr:Ljava/lang/CharSequence;

.field private mOnDismissListener:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mParentChildLandMaxHeight:I

.field private mParentChildPortMaxHeight:I

.field private mParentEndHeight:I

.field private mParentHeightAnim:Landroid/animation/ObjectAnimator;

.field private mParentPaddingBottom:I

.field private mParentPaddingLeft:I

.field private mParentPaddingRight:I

.field private mParentPaddingTop:I

.field private mParentStartHeight:I

.field private mParentWidth:I

.field private mPosButBg:Landroid/graphics/drawable/Drawable;

.field private mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mPosButListener:Landroid/view/View$OnClickListener;

.field private mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mPosButtonStr:Ljava/lang/CharSequence;

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTemplateBottomMargin:I

.field private mTitleTemplateLeftMargin:I

.field private mTitleTemplateRightMargin:I

.field private mTitleTemplateTopMargin:I

.field private mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mTopPanelEndHeight:I

.field private mTopPanelStartHeight:I

.field private mVerButDividerVerMargin:I

.field private mVerButHorPadding:I

.field private mVerButMinHeight:I

.field private mVerButPaddingOffset:I

.field private mVerButVerPadding:I

.field private mWindowLandHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCancelable:Z

    .line 157
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCancelable:Z

    .line 161
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 162
    .local v0, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 163
    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTheme:I

    .line 164
    return-void
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->getButCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButBg:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;

    .line 71
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mOnDismissListener:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;

    return-object v0
.end method

.method private butHasContent(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "butStr"    # Ljava/lang/CharSequence;

    .line 1034
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private calculateButPanelEndHeight()V
    .locals 2

    .line 924
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->getButCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    goto :goto_0

    .line 927
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->needSetButVertical(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateVerButPanelEndHeight()V

    goto :goto_0

    .line 930
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHorButPanelMinHeight:I

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 933
    :goto_0
    return-void
.end method

.method private calculateCustomEndHeight()V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 919
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 917
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 920
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    .line 921
    return-void
.end method

.method private calculateMessageContainerEndHeight()V
    .locals 3

    .line 908
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->createMeasureMessageView()V

    .line 909
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 912
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 910
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 913
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessageContainerPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessageContainerPaddingBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    .line 914
    return-void
.end method

.method private calculateTopPanelEndHeight()V
    .locals 3

    .line 898
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->createMeasureTitleView()V

    .line 899
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateLeftMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateRightMargin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 903
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 904
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateTopMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateBottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelEndHeight:I

    .line 905
    return-void
.end method

.method private calculateVerButPanelEndHeight()V
    .locals 3

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 937
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->createMeasurePosButton()V

    .line 939
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->setVerPosButPadding()V

    .line 940
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateVerPosButEndHeight()V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->createMeasureNeuButton()V

    .line 945
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->setVerNeuButPadding()V

    .line 946
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateVerNeuButEndHeight()V

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->createMeasureNegButton()V

    .line 951
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->setVerNegButPadding()V

    .line 952
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateVerNegButEndHeight()V

    .line 955
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->getButCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButDividerVerMargin:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButDividerSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 958
    :cond_3
    return-void
.end method

.method private calculateVerNegButEndHeight()V
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1015
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1013
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 1016
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 1017
    return-void
.end method

.method private calculateVerNeuButEndHeight()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1007
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 1008
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 1009
    return-void
.end method

.method private calculateVerPosButEndHeight()V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 999
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 997
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 1000
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    .line 1001
    return-void
.end method

.method private createMeasureMessageView()V
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1802(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 365
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 366
    invoke-static {v3}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 365
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 367
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 369
    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 370
    return-void
.end method

.method private createMeasureNegButton()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2102(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 382
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 383
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 385
    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLineSpacingMultiplier()F

    move-result v2

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setLineSpacing(FF)V

    .line 386
    return-void
.end method

.method private createMeasureNeuButton()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2302(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 390
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 392
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 393
    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLineSpacingMultiplier()F

    move-result v2

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setLineSpacing(FF)V

    .line 394
    return-void
.end method

.method private createMeasurePosButton()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1902(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 374
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 375
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 376
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 377
    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLineSpacingMultiplier()F

    move-result v2

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setLineSpacing(FF)V

    .line 378
    return-void
.end method

.method private createMeasureTitleView()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1602(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 355
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 356
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1600(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 359
    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 360
    return-void
.end method

.method private getButCount()I
    .locals 2

    .line 1020
    const/4 v0, 0x3

    .line 1021
    .local v0, "butCount":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    add-int/lit8 v0, v0, -0x1

    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    add-int/lit8 v0, v0, -0x1

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    add-int/lit8 v0, v0, -0x1

    .line 1030
    :cond_2
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    .line 169
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHeightInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPaint:Landroid/text/TextPaint;

    .line 172
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->coui_changeable_alert_dialog:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$102(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/view/View;)Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->changeable_dialog_message_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$202(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->changeable_dialog_custom_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$302(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 176
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$id;->changeable_dialog_message_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$402(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 177
    return-void
.end method

.method private initAnimatorListener()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eq v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1067
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1069
    :cond_0
    return-void
.end method

.method private initButtonAnim()V
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initPosButAnim()V

    .line 631
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initNegButAnim()V

    .line 632
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initNeuButAnim()V

    .line 633
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateButPanelEndHeight()V

    .line 634
    return-void
.end method

.method private initMessageAndCustomAnim()V
    .locals 8

    .line 484
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->resetAlpha()V

    .line 485
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 487
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 488
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 490
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$4;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateMessageContainerEndHeight()V

    .line 521
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurMessage:Ljava/lang/CharSequence;

    .line 525
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurCustomView:Landroid/view/View;

    goto/16 :goto_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurCustomView:Landroid/view/View;

    if-eq v0, v6, :cond_1

    .line 527
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 528
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 529
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 531
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 532
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 533
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 534
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$5;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateCustomEndHeight()V

    .line 568
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurCustomView:Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurMessage:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 574
    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_3

    goto :goto_0

    .line 612
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentStartHeight:I

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    goto :goto_1

    .line 575
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_4

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 576
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 577
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 578
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 579
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 580
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$6;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    .line 606
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurMessage:Ljava/lang/CharSequence;

    .line 610
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurCustomView:Landroid/view/View;

    .line 614
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->reCalculateContentEndHeight()V

    .line 615
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initNegButAnim()V
    .locals 8

    .line 724
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 726
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 727
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 729
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 731
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$9;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButtonStr:Ljava/lang/CharSequence;

    goto :goto_0

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 765
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 766
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 767
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 768
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 769
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 770
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$10;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButtonStr:Ljava/lang/CharSequence;

    .line 804
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    if-eq v0, v1, :cond_2

    .line 805
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButListener:Landroid/view/View$OnClickListener;

    .line 808
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initNeuButAnim()V
    .locals 8

    .line 811
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 813
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 814
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 816
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 817
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 818
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$11;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 845
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButtonStr:Ljava/lang/CharSequence;

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 852
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 854
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 855
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 856
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 857
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 858
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$12;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$12;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 885
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButtonStr:Ljava/lang/CharSequence;

    .line 891
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    if-eq v0, v1, :cond_2

    .line 892
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButListener:Landroid/view/View$OnClickListener;

    .line 895
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initParams()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentStartHeight:I

    .line 323
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentWidth:I

    .line 324
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingTop:I

    .line 325
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingBottom:I

    .line 326
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingLeft:I

    .line 327
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingRight:I

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 329
    .local v0, "titleTemplateParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateTopMargin:I

    .line 330
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateBottomMargin:I

    .line 331
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateLeftMargin:I

    .line 332
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitleTemplateRightMargin:I

    .line 333
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelStartHeight:I

    .line 334
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentStartHeight:I

    .line 335
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessageContainerPaddingTop:I

    .line 336
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessageContainerPaddingBottom:I

    .line 338
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_dialog_button_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 339
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_delete_alert_dialog_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButDividerSize:I

    .line 340
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHorButHorPadding:I

    .line 341
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHorButPanelMinHeight:I

    .line 342
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_button_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    .line 343
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->alert_dialog_list_item_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    .line 344
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_delete_alert_dialog_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    .line 345
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    .line 346
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButDividerVerMargin:I

    .line 347
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_dialog_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentChildPortMaxHeight:I

    .line 348
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_dialog_max_height_landscape:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentChildLandMaxHeight:I

    .line 349
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mWindowLandHeight:I

    .line 350
    return-void
.end method

.method private initParentHeightAnim()V
    .locals 5

    .line 1054
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelEndHeight:I

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentEndHeight:I

    .line 1055
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentStartHeight:I

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentEndHeight:I

    if-eq v0, v1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$3700(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Lcom/coui/appcompat/widget/COUIHeightView;

    move-result-object v0

    const-string v1, "height"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentStartHeight:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentEndHeight:I

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentHeightAnim:Landroid/animation/ObjectAnimator;

    .line 1057
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentHeightAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1058
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentHeightAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1059
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentHeightAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHeightInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1060
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentHeightAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_0
    return-void
.end method

.method private initPosButAnim()V
    .locals 8

    .line 637
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 639
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 640
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 641
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 642
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 643
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 644
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$7;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 671
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButtonStr:Ljava/lang/CharSequence;

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButtonStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 678
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 679
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 681
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 682
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 683
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$8;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 711
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButtonStr:Ljava/lang/CharSequence;

    .line 717
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    if-eq v0, v1, :cond_2

    .line 718
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2000(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButListener:Landroid/view/View$OnClickListener;

    .line 721
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initTopAnim()V
    .locals 8

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    const-wide/16 v3, 0x96

    const/4 v5, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 404
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 407
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 409
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 435
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->calculateTopPanelEndHeight()V

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 443
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    const-string v6, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 446
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 448
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$3;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelEndHeight:I

    .line 474
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopOutAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopInAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 479
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelStartHeight:I

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelEndHeight:I

    .line 481
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isPort()Z
    .locals 4

    .line 1077
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1078
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1079
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1080
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private needSetButVertical(I)Z
    .locals 7
    .param p1, "parentWidth"    # I

    .line 1038
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->getButCount()I

    move-result v0

    .line 1039
    .local v0, "buttonCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1040
    return v1

    .line 1043
    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButDividerSize:I

    mul-int/2addr v2, v3

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mHorButHorPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1044
    .local v2, "buttonWidth":I
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1045
    .local v3, "posButWidth":I
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1

    :cond_2
    move v4, v1

    .line 1046
    .local v4, "negButWidth":I
    :goto_1
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_2

    :cond_3
    move v5, v1

    .line 1048
    .local v5, "neuButWidth":I
    :goto_2
    if-gt v3, v2, :cond_5

    if-gt v4, v2, :cond_5

    if-le v5, v2, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x1

    :goto_4
    return v1
.end method

.method private reCalculateContentEndHeight()V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 624
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->isPort()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentChildPortMaxHeight:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentChildLandMaxHeight:I

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mWindowLandHeight:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mParentPaddingBottom:I

    sub-int/2addr v2, v3

    :goto_1
    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTopPanelEndHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mButtonPanelEndHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContentEndHeight:I

    .line 627
    return-void
.end method

.method private resetAlpha()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setAlpha(F)V

    .line 619
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 620
    return-void
.end method

.method private resetAnim()V
    .locals 1

    .line 397
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 398
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 399
    return-void
.end method

.method private setVerNegButPadding()V
    .locals 6

    .line 991
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 992
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 993
    return-void
.end method

.method private setVerNeuButPadding()V
    .locals 6

    .line 971
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 974
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 977
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_0

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 982
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 985
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$2300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 988
    :goto_0
    return-void
.end method

.method private setVerPosButPadding()V
    .locals 6

    .line 961
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->butHasContent(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 966
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_1

    .line 962
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButHorPadding:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 963
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1900(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 968
    :goto_1
    return-void
.end method

.method private startAnim()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1073
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1074
    return-void
.end method


# virtual methods
.method public create()Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurTitle:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurMessage:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurCustomView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButtonStr:Ljava/lang/CharSequence;

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButtonStr:Ljava/lang/CharSequence;

    .line 266
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButtonStr:Ljava/lang/CharSequence;

    .line 267
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurPosButListener:Landroid/view/View$OnClickListener;

    .line 268
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNegButListener:Landroid/view/View$OnClickListener;

    .line 269
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurNeuButListener:Landroid/view/View$OnClickListener;

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCurAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 272
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTheme:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTheme:I

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$502(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 273
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 274
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setChangeable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCancelable:Z

    .line 276
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setCancelable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    .line 286
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 289
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCancelable:Z

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$802(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Z)Z

    .line 290
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$902(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 291
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1002(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 292
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1102(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 294
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$400(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$300(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$1202(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;Lcom/coui/appcompat/dialog/app/COUIAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    .line 307
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mChangeableDialog:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    return-object v0
.end method

.method public reshow()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initParams()V

    .line 312
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->resetAnim()V

    .line 313
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initTopAnim()V

    .line 314
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initButtonAnim()V

    .line 315
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initMessageAndCustomAnim()V

    .line 316
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initParentHeightAnim()V

    .line 317
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->initAnimatorListener()V

    .line 318
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->startAnim()V

    .line 319
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 251
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 252
    return-object p0
.end method

.method public setCancelable(Z)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .line 246
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCancelable:Z

    .line 247
    return-object p0
.end method

.method public setMessage(I)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 1
    .param p1, "resId"    # I

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 196
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 190
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 191
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 228
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    .line 229
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    .line 230
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "negButtonStr"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 222
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButtonStr:Ljava/lang/CharSequence;

    .line 223
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNegButListener:Landroid/view/View$OnClickListener;

    .line 224
    return-object p0
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 240
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    .line 241
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    .line 242
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "neuButtonStr"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 234
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButtonStr:Ljava/lang/CharSequence;

    .line 235
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mNeuButListener:Landroid/view/View$OnClickListener;

    .line 236
    return-object p0
.end method

.method public setOnDismissListener(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;

    .line 256
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mOnDismissListener:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$OnDismissListener;

    .line 257
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 216
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    .line 217
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    .line 218
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "posButtonStr"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 210
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButtonStr:Ljava/lang/CharSequence;

    .line 211
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mPosButListener:Landroid/view/View$OnClickListener;

    .line 212
    return-object p0
.end method

.method public setTitle(I)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 1
    .param p1, "resId"    # I

    .line 185
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 186
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 180
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 181
    return-object p0
.end method

.method public setView(I)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 2
    .param p1, "layoutId"    # I

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    .line 206
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 200
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$Builder;->mCustomView:Landroid/view/View;

    .line 201
    return-object p0
.end method
