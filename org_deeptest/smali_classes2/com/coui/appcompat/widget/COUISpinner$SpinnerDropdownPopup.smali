.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
.super Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
.source "COUISpinner.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerDropdownPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;,
        Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimListTranslationYListener;,
        Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;,
        Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
    }
.end annotation


# static fields
.field private static final NO_ANIMATION_STYLE:I


# instance fields
.field private final mBackgroundAlpha:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mDismissPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

.field private mItemClickPosition:I

.field private mMaxDropdownHeight:I

.field private mNeedDelayDismiss:Z

.field private final mPopupTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISpinner;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUISpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 644
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    .line 645
    invoke-direct/range {p0 .. p5}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 624
    new-instance v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/COUISpinner$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

    .line 625
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    .line 629
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mDismissPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 646
    sget-object v0, Lcoui/support/appcompat/R$styleable;->Window:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 647
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->Window_android_backgroundDimAmount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    .line 648
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$1;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/COUISpinner;)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 673
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUISpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_spinner_popupwindow_max_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mMaxDropdownHeight:I

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    .line 621
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->updateBackground()V

    return-void
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # I

    .line 621
    iput p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Landroid/view/View;

    .line 621
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    .line 621
    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mMaxDropdownHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Landroid/view/View;

    .line 621
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getViewWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Z

    .line 621
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p1, "x1"    # Landroid/widget/ListView;

    .line 621
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setListViewLayoutLimit(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$701(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    .line 621
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->dismiss()V

    return-void
.end method

.method private createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .line 885
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 887
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 888
    new-instance v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;

    const-string v3, "alpha"

    invoke-direct {v0, p0, v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Ljava/lang/String;)V

    .line 900
    .local v0, "mDrawableAlpha":Landroid/util/IntProperty;, "Landroid/util/IntProperty<Landroid/graphics/drawable/Drawable;>;"
    new-array v2, v2, [I

    aput p3, v2, v1

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 901
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 902
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v0, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p2, v3, v1

    aput p3, v3, v2

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 904
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 905
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 906
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 907
    return-object v0
.end method

.method private createBackgroundHideAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 915
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createBackgroundShowAnimation(Landroid/graphics/drawable/Drawable;)Landroid/animation/Animator;
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 911
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "startValue"    # F
    .param p3, "endValue"    # F

    .line 1049
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 1050
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1051
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimListTranslationYListener;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimListTranslationYListener;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1052
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1053
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1054
    return-object v0
.end method

.method private createListHideAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 1062
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createListShowAnimation(Landroid/widget/ListView;)Landroid/animation/Animator;
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 1058
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getViewHeight(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createListAnimation(Landroid/widget/ListView;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createShowAnimatorset()Landroid/animation/AnimatorSet;
    .locals 11

    .line 920
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 921
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 922
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 924
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 925
    .local v4, "animator1":Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1400()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 926
    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 927
    new-instance v5, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$6;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$6;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 935
    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 936
    .local v5, "animator2":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 937
    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 938
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1500()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 939
    new-instance v10, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$7;

    invoke-direct {v10, p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$7;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 946
    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 947
    .local v3, "animator3":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 948
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 949
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1600()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 950
    new-instance v6, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$8;

    invoke-direct {v6, p0, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$8;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 958
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 960
    new-instance v6, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$9;

    invoke-direct {v6, p0, v0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$9;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 987
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x66
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getViewHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 842
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 845
    :cond_0
    return v0
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 834
    .local v0, "width":I
    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 837
    :cond_0
    return v0
.end method

.method private onHide(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 3
    .param p1, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 1099
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$1802(Lcom/coui/appcompat/widget/COUISpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1103
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISpinner;->access$2000(Lcom/coui/appcompat/widget/COUISpinner;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1105
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$2000(Lcom/coui/appcompat/widget/COUISpinner;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$2002(Lcom/coui/appcompat/widget/COUISpinner;Z)Z

    .line 1107
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->superDismiss()V

    .line 1108
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1110
    :cond_2
    return-void
.end method

.method private onShow()V
    .locals 3

    .line 1082
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    .line 1083
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->updateBackground()V

    .line 1084
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->updateListView()V

    .line 1085
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createShowAnimatorset()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$1802(Lcom/coui/appcompat/widget/COUISpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1089
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1091
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1092
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1900(Lcom/coui/appcompat/widget/COUISpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$1902(Lcom/coui/appcompat/widget/COUISpinner;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1800(Lcom/coui/appcompat/widget/COUISpinner;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1096
    :cond_1
    return-void
.end method

.method private varargs playAnimators([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p1, "animators"    # [Landroid/animation/Animator;

    .line 1066
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1067
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1068
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 1069
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v4, :cond_0

    .line 1070
    goto :goto_1

    .line 1072
    :cond_0
    if-nez v1, :cond_1

    .line 1073
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    .line 1075
    :cond_1
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1068
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1078
    :cond_2
    return-object v0
.end method

.method private setListViewLayoutLimit(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 812
    if-nez p1, :cond_0

    .line 813
    return-void

    .line 815
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$4;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 829
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_spiner_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 862
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 863
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 864
    return-void
.end method

.method private updateListView()V
    .locals 7

    .line 867
    const/4 v0, -0x1

    .line 868
    .local v0, "widthSize":I
    const/4 v1, -0x2

    .line 869
    .local v1, "heightSize":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 870
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 871
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 872
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v3, v6

    goto :goto_0

    .line 874
    :cond_0
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 875
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 877
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-nez v4, :cond_2

    .line 879
    :cond_1
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, -0x80000000

    .line 880
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 879
    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->measure(II)V

    .line 882
    :cond_2
    return-void
.end method

.method private updatePopupWindow()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopupTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 850
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setAnimationStyle(I)V

    .line 851
    return-void
.end method


# virtual methods
.method protected buildDropDown()I
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget v0, v0, Lcom/coui/appcompat/widget/COUISpinner;->mDropDownWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 797
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 798
    .local v0, "maxWidth":I
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setWidth(I)V

    .line 800
    .end local v0    # "maxWidth":I
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$1000(Lcom/coui/appcompat/widget/COUISpinner;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 803
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getVerticalOffset()I

    move-result v2

    const/4 v3, 0x0

    .line 802
    invoke-virtual {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    .line 804
    .local v0, "maxHeight":I
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setHeight(I)V

    .line 806
    .end local v0    # "maxHeight":I
    :cond_1
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->buildDropDown()I

    move-result v0

    return v0
.end method

.method createHideAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 9

    .line 991
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 992
    .local v0, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 993
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 995
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 996
    .local v4, "animator1":Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1500()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 997
    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 998
    new-instance v7, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$10;

    invoke-direct {v7, p0, v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$10;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1006
    .local v7, "animator2":Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1600()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1007
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1008
    new-instance v8, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$11;

    invoke-direct {v8, p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$11;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1016
    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1017
    .local v3, "animator3":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1018
    invoke-static {}, Lcom/coui/appcompat/widget/COUISpinner;->access$1400()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1019
    new-instance v5, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$12;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$12;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1027
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1028
    new-instance v5, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$13;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$13;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1045
    return-object v0

    nop

    :array_0
    .array-data 4
        0x66
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
.end method

.method public dismiss()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 686
    return-void
.end method

.method public onAnimateDismissEnd(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 3
    .param p1, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 781
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$500(Lcom/coui/appcompat/widget/COUISpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUISpinner;->access$902(Lcom/coui/appcompat/widget/COUISpinner;Z)Z

    .line 783
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUISpinner;->setSelection(I)V

    .line 784
    iput v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mItemClickPosition:I

    .line 786
    :cond_0
    return-void
.end method

.method public onAnimateDismissStart(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 1
    .param p1, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 771
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mDismissPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 772
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$800(Lcom/coui/appcompat/widget/COUISpinner;)Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mNeedDelayDismiss:Z

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISpinner;->access$800(Lcom/coui/appcompat/widget/COUISpinner;)Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissCallback;->setDismissListener(Lcom/coui/appcompat/widget/COUISpinnerCallback$DropdownDismissListener;)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->startDropdownDismiss()V

    .line 777
    :goto_0
    return-void
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 766
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 767
    return-void
.end method

.method public show()V
    .locals 0

    .line 679
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->show()V

    .line 680
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->updatePopupWindow()V

    .line 681
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 690
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->isShowing()Z

    move-result v0

    .line 691
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->computeContentWidth()V

    .line 693
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setInputMethodMode(I)V

    .line 694
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->show()V

    .line 695
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 706
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 707
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 708
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 711
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_spinner_popupwindow_listview_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 715
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setListViewLayoutLimit(Landroid/widget/ListView;)V

    .line 717
    invoke-static {v1, p2}, Lcom/coui/appcompat/widget/COUIViewCompat;->setTextAlignment(Landroid/view/View;I)V

    .line 718
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setSelection(I)V

    .line 720
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->onShow()V

    .line 722
    if-eqz v0, :cond_0

    .line 725
    return-void

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 732
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_1

    .line 733
    new-instance v3, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$2;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    .line 750
    .local v3, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 751
    new-instance v4, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$3;

    invoke-direct {v4, p0, v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$3;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->setOnDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;)V

    .line 762
    .end local v3    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    return-void
.end method

.method public startDropdownDismiss()V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->mDismissPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->onHide(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V

    .line 791
    return-void
.end method
