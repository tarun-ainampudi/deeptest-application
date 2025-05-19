.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
.super Landroid/widget/LinearLayout;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$ScrollViewBehavior;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;,
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_ANIM_DELAY:I = 0x32

.field private static final ANIMATION_TYPE_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATION_TYPE_ROTATION:Ljava/lang/String; = "rotation"

.field private static final ANIMATION_TYPE_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_TYPE_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final ANIMATION_TYPE_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field private static final DEFAULT_ALPHA_VALUE_SHADOW:F = 0.3f

.field private static final DEFAULT_ANIMATION_EXPAND_END_VALUE:F = 1.1f

.field private static final DEFAULT_ANIMATION_EXPAND_START_VALUE:F = 1.0f

.field private static final DEFAULT_ANIMATION_NARROW_END_VALUE:F = 1.0f

.field private static final DEFAULT_ANIMATION_NARROW_START_VALUE:F = 1.1f

.field private static final DEFAULT_BUTTON_EXPAND_ANIMATION_DURATION:I = 0x42

.field private static final DEFAULT_BUTTON_LABEL_CLOSE_ALPHA_ANIMATION_DURATION:I = 0x15e

.field private static final DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_END_VALUE:F = 0.0f

.field private static final DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_START_VALUE:F = 1.0f

.field private static final DEFAULT_CLOSE_MENU_ANIMATION_DURATION_WITH_SLIDE_OUT:I = 0x96

.field private static final DEFAULT_CLOSE_MENU_NARROW_ANIMATION_END_VALUE:F = 0.6f

.field private static final DEFAULT_CLOSE_MENU_NARROW_ANIMATION_START_VALUE:F = 1.0f

.field private static final DEFAULT_COUI_FLOATING_BUTTON_SIZE:I = 0x34

.field private static final DEFAULT_ELEVATION_FLOATING_BUTTON:I = 0x18

.field private static final DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_END_VALUE:F = 1.0f

.field private static final DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_START_VALUE:F = 0.0f

.field private static final DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_END_VALUE:F = 1.0f

.field private static final DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_START_VALUE:F = 0.6f

.field private static final DEFAULT_EXPAND_WAY:I = 0x0

.field private static final DEFAULT_LABEL_ALPHA_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_MAIN_FLOATING_BUTTON_ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_MARGIN_BOTTOM_FIRST_CHILD:I = 0x24

.field private static final DEFAULT_MARGIN_BOTTOM_NOT_FIRST_CHILD:I = 0x14

.field private static final DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE:F = 0.98f

.field private static final DEFAULT_ROTATE_ANGLE:I = 0x2d

.field private static final DEFAULT_ROTATE_ANIMATION_DURATION:I = 0xfa

.field private static final DEFAULT_ROTATE_ANIMATION_DURATION_NO_ITEM:I = 0x12c

.field private static final DEFAULT_SLIDE_IN_ANIMATION_DURATION:I = 0xc8

.field private static final DEFAULT_SLIDE_OUT_ANIMATION_DURATION:I = 0xfa

.field private static final DEFAULT_SLIDE_OUT_TRANSITION_ANIMATION_DURATION:I = 0x8c

.field private static final DEFAULT_SLIDING_THRESHOLD:I = 0xa

.field private static final DEFAULT_SPRING_ANIMATION_DAMPING_RATIO:F = 0.8f

.field private static final DEFAULT_SPRING_ANIMATION_START_VELOCITY:I = 0x0

.field private static final DEFAULT_SPRING_ANIMATION_STIFFNESS:I = 0x1f4

.field private static final DELAY_TIME_NO_ACTION_SLIDE_OUT:I = 0x1388

.field private static final MAIN_FAB_HORIZONTAL_MARGIN_IN_DP:I = 0xc

.field private static final MAIN_FAB_VERTICAL_MARGIN_IN_DP:I = 0x8

.field private static final MAX_COLOR_FLOATING_BUTTON_SIZE:I = 0x6

.field private static final MESSAGE_PAUSE_TIME_SLIDE_OUT:I = 0x1

.field private static final STATE_KEY_EXPANSION_MODE:Ljava/lang/String; = "expansionMode"

.field private static final STATE_KEY_IS_OPEN:Ljava/lang/String; = "isOpen"

.field private static final STATE_KEY_SUPER:Ljava/lang/String; = "superState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDismissRunnable:Ljava/lang/Runnable;

.field private mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCurrentWindowHeight:I

.field private mCurrentWindowHeightOffset:I

.field private mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFloatingButtonLabelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

.field private mIsAnimationInStart:Z

.field private mIsAnimationOutStart:Z

.field private mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mMainFabCloseOriginalDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

.field private mMainFloatingButtonX:F

.field private mMainFloatingButtonY:F

.field private mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

.field private mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPressAnimationRecorder:Landroid/animation/ValueAnimator;

.field private mPressValue:F

.field private mRotateAngle:F

.field private mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSlideInAnimationInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSlideOutAnimationInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTempOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideOutAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 166
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v1, v3, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideInAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 167
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 168
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 169
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 170
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 171
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 179
    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideOutAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 166
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideInAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 167
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 168
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 169
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 171
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 179
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideOutAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 166
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideInAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 167
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 168
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 169
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 170
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 171
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    .line 179
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isLastFloatingButtonLabel(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isFirstFloatingButtonLabel(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mTempOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->narrowFloatingButton(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIZ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;F)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # F

    .line 93
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p1, "x1"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    .line 93
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animatePress()V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animateNormal()V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->handleOnClickFloatingButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressValue:F

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
    .param p1, "x1"    # F

    .line 93
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressValue:F

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private animateNormal()V
    .locals 3

    .line 709
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->clearAnimation()V

    .line 710
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->cancelRecorder()V

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressValue:F

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generateResumeAnimation(Landroid/view/View;F)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    return-void
.end method

.method private animatePress()V
    .locals 3

    .line 682
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->clearAnimation()V

    .line 683
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->cancelRecorder()V

    .line 685
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generatePressAnimation(Landroid/view/View;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    .line 686
    .local v0, "pressAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-static {}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generatePressAnimationRecord()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    .line 687
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$4;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 697
    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$5;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 704
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 705
    return-void
.end method

.method private animationFloatingButtonMenuClose(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIIZ)V
    .locals 14
    .param p1, "COUIFloatingButtonLabel"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p2, "delay"    # I
    .param p3, "position"    # I
    .param p4, "duration"    # I
    .param p5, "needDrop"    # Z

    .line 1078
    move-object v6, p0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1080
    .local v7, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p5, :cond_0

    .line 1081
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, v6, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    mul-int/lit8 v2, p3, 0x48

    add-int/lit8 v2, v2, 0x58

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    mul-int/lit8 v1, p3, 0x48

    add-int/lit8 v1, v1, 0x58

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .local v0, "dropDistance":I
    :goto_0
    move v8, v0

    .line 1085
    .end local v0    # "dropDistance":I
    .local v8, "dropDistance":I
    const-string v0, "translationY"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, v8

    aput v3, v1, v2

    move-object v9, p1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1086
    .local v10, "menuTranslationYAnimation":Landroid/animation/ObjectAnimator;
    move/from16 v11, p2

    int-to-long v0, v11

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1087
    move/from16 v12, p4

    int-to-long v0, v12

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1088
    iget-object v0, v6, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1090
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 1091
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPivotX(F)V

    .line 1093
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPivotY(F)V

    goto :goto_1

    .line 1095
    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPivotX(F)V

    .line 1096
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPivotY(F)V

    .line 1100
    :cond_2
    :goto_1
    new-instance v13, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p5

    move-object v4, p1

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$10;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;IZLcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1137
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1138
    return-void
.end method

.method private animationFloatingButtonMenuExpand(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;III)V
    .locals 17
    .param p1, "COUIFloatingButtonLabel"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p2, "delay"    # I
    .param p3, "position"    # I
    .param p4, "visibility"    # I

    .line 1013
    move-object/from16 v7, p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v8, v0

    .line 1014
    .local v8, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    move-object v10, v0

    .line 1015
    .local v10, "springAnimation":Landroidx/dynamicanimation/animation/SpringAnimation;
    invoke-virtual {v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1016
    invoke-virtual {v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1017
    invoke-virtual {v10, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1019
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1020
    .local v11, "narrowXAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "scaleY"

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1022
    .local v12, "narrowYAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1023
    .local v13, "labelNarrowXAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    const-string v1, "scaleY"

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 1025
    .local v14, "labelNarrowYAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "alpha"

    new-array v4, v3, [F

    fill-array-data v4, :array_4

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1027
    .local v15, "buttonAlphaAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    const-string v1, "alpha"

    new-array v4, v3, [F

    fill-array-data v4, :array_5

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1028
    .local v6, "labelAlphaAnimation":Landroid/animation/ObjectAnimator;
    iget-object v0, v7, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1029
    const-wide/16 v0, 0x15e

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1031
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    aput-object v15, v0, v3

    const/4 v1, 0x3

    aput-object v13, v0, v1

    const/4 v1, 0x4

    aput-object v14, v0, v1

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1032
    iget-object v0, v7, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mExpandMenuAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1033
    const-wide/16 v0, 0x12c

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1034
    move/from16 v5, p2

    int-to-long v0, v5

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1035
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setPivotX(F)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setPivotY(F)V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPivotX(F)V

    .line 1041
    invoke-virtual/range {p1 .. p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setPivotY(F)V

    .line 1045
    :cond_1
    :goto_0
    new-instance v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v6

    move-object v7, v4

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    .end local v6    # "labelAlphaAnimation":Landroid/animation/ObjectAnimator;
    .local v16, "labelAlphaAnimation":Landroid/animation/ObjectAnimator;
    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1072
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1074
    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelRecorder()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 719
    :cond_0
    return-void
.end method

.method private createMainFab()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 8

    .line 810
    new-instance v0, Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;)V

    .line 811
    .local v0, "floatingActionButton":Lcom/google/android/material/imageview/ShapeableImageView;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_floating_button_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 812
    .local v1, "floatingButtonPixel":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_stroke_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 813
    .local v2, "floatingButtonStrokeWidth":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 814
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x800005

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 815
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v4

    .line 816
    .local v4, "marginHorizontal":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    .line 817
    .local v5, "marginVertical":I
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 818
    sget v6, Lcoui/support/appcompat/R$id;->coui_floating_button_main_fab:I

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setId(I)V

    .line 819
    invoke-virtual {v0, v3}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    invoke-virtual {v0, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(I)V

    .line 821
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    .line 822
    sget v6, Lcoui/support/appcompat/R$color;->coui_floating_button_label_broader_color:I

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColorResource(I)V

    .line 823
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v6, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 824
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 825
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setClickable(Z)V

    .line 826
    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setFocusable(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 829
    return-object v0
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 1637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1638
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "index"    # I

    .line 892
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    return-object v0

    .line 895
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 3
    .param p1, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 884
    .local v1, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 885
    return-object v1

    .line 887
    .end local v1    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    :cond_0
    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLayoutPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 763
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private handleOnClickFloatingButton()V
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;->onMainActionSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->closeFloatingButtonMenu()V

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->openFloatingButtonMenu()V

    .line 678
    :cond_2
    :goto_0
    return-void
.end method

.method private hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 221
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->closeFloatingButtonMenu()V

    .line 224
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 226
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 767
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->createMainFab()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 768
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$6;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    .line 775
    .local v0, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setElevation(F)V

    .line 776
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 777
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundColor(I)V

    .line 778
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addView(Landroid/view/View;)V

    .line 779
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setClipChildren(Z)V

    .line 780
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setClipToPadding(Z)V

    .line 781
    new-instance v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    .line 783
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIFloatingButton:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 785
    .local v1, "styledAttrs":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIFloatingButton_android_enabled:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setEnabled(Z)V

    .line 786
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIFloatingButton_mainFloatingButtonSrc:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 788
    .local v2, "openDrawableRes":I
    if-eq v2, v3, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setExpansionMode()V

    .line 792
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFloatingButton_mainFloatingButtonBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 794
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFloatingButton_fabExpandAnimationEnable:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 799
    .end local v2    # "openDrawableRes":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 796
    :catch_0
    move-exception v2

    .line 797
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure setting FabWithLabelView icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 800
    nop

    .line 802
    return-void

    .line 799
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private isFirstFloatingButtonLabel(I)Z
    .locals 5
    .param p1, "position"    # I

    .line 1182
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    .line 1183
    .local v0, "currentFoundCOUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    move v1, v4

    nop

    :cond_0
    return v1

    .line 1186
    :cond_1
    return v1
.end method

.method private isLastFloatingButtonLabel(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 1190
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByIndex(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    .line 1191
    .local v0, "currentFoundCOUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1192
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1194
    :cond_1
    return v1
.end method

.method private isRtlMode()Z
    .locals 2

    .line 1229
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private narrowFloatingButton(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIZ)V
    .locals 10
    .param p1, "COUIFloatingButtonLabel"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p2, "position"    # I
    .param p3, "duration"    # I
    .param p4, "needDrop"    # Z

    .line 1145
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1147
    .local v0, "narrowAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1148
    .local v1, "narrowXAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v2

    const-string v4, "scaleY"

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1150
    .local v2, "narrowYAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v4

    const-string v5, "scaleX"

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1151
    .local v4, "labelNarrowXAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v5

    const-string v6, "scaleY"

    new-array v7, v3, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1153
    .local v5, "labelNarrowYAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v6

    const-string v7, "alpha"

    new-array v8, v3, [F

    fill-array-data v8, :array_4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1155
    .local v6, "childFloatingButtonAlphaAnimation":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v7

    const-string v8, "alpha"

    new-array v9, v3, [F

    fill-array-data v9, :array_5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1156
    .local v7, "labelAlphaAnimation":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuLabelPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1157
    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1159
    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v5, v8, v3

    const/4 v3, 0x4

    aput-object v4, v8, v3

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1160
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCloseMenuPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1161
    int-to-long v8, p3

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1162
    new-instance v3, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$11;

    invoke-direct {v3, p0, v7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$11;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1178
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1179
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 2
    .param p1, "view"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 443
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    return-object v0
.end method

.method private removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 2
    .param p1, "view"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Iterator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "animate"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;",
            "Ljava/util/Iterator<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;",
            ">;Z)",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;"
        }
    .end annotation

    .line 426
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;>;"
    if-eqz p1, :cond_1

    .line 427
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    .line 428
    .local v0, "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    if-eqz p2, :cond_0

    .line 429
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 434
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeView(Landroid/view/View;)V

    .line 435
    return-object v0

    .line 437
    .end local v0    # "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setExpansionMode()V
    .locals 3

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setOrientation(I)V

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 212
    .local v1, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    .line 213
    .end local v1    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    goto :goto_0

    .line 214
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->closeFloatingButtonMenu(ZI)V

    .line 215
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;>;"
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeAllActionItems()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addAllActionItems(Ljava/util/Collection;)Ljava/util/Collection;

    .line 218
    return-void
.end method

.method private setFloatingButtonPosition(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;I)V
    .locals 2
    .param p1, "COUIFloatingButtonLabel"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p2, "position"    # I

    .line 1198
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 1199
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1200
    return-void
.end method

.method private toggle(ZZIZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "needDrop"    # Z

    .line 833
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const/4 p1, 0x0

    .line 835
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;->onMainActionSelected()Z

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 840
    return-void

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 843
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->visibilitySetup(ZZIZ)V

    .line 844
    invoke-direct {p0, p2, p4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->updateMainFabDrawable(ZZ)V

    .line 845
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->updateMainFloatingButtonBackgroundColor()V

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    if-eqz v0, :cond_3

    .line 848
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;->onToggleChanged(Z)V

    .line 850
    :cond_3
    return-void
.end method

.method private updateMainFabDrawable(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "needDrop"    # Z

    .line 853
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p0, v0, v1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->rotateForward(Landroid/view/View;FZ)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->rotateBackward(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 857
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    :cond_1
    :goto_0
    return-void
.end method

.method private updateMainFloatingButtonBackgroundColor()V
    .locals 4

    .line 867
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 868
    .local v0, "color":Landroid/content/res/ColorStateList;
    const/high16 v1, -0x80000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 873
    :goto_0
    return-void
.end method

.method private visibilitySetup(ZZIZ)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "needDrop"    # Z

    .line 902
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 903
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 904
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 905
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 906
    iget-object v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 908
    .local v4, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    iget v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    if-eqz v5, :cond_1

    .line 909
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x48

    add-int/lit8 v6, v6, 0x58

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v6}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    iget v7, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeightOffset:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_0

    .line 910
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 911
    if-eqz p2, :cond_2

    .line 912
    mul-int/lit8 v6, v3, 0x32

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v3

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;III)V

    goto :goto_1

    .line 915
    :cond_0
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 916
    if-eqz p2, :cond_2

    .line 917
    mul-int/lit8 v5, v3, 0x32

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;III)V

    goto :goto_1

    .line 921
    :cond_1
    if-eqz p2, :cond_2

    .line 922
    mul-int/lit8 v5, v3, 0x32

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;III)V

    .line 905
    .end local v4    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    goto :goto_3

    .line 928
    :cond_4
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 929
    iget-object v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 930
    .local v10, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    if-eqz p2, :cond_5

    .line 931
    mul-int/lit8 v6, v3, 0x32

    move-object v4, p0

    move-object v5, v10

    move v7, v3

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIIZ)V

    .line 928
    .end local v10    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 935
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v3, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$102(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 937
    :goto_3
    return-void
.end method


# virtual methods
.method public addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "COUIFloatingButtonItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    return-object v0
.end method

.method public addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "actionItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .param p2, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    return-object v0
.end method

.method public addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 9
    .param p1, "actionItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .param p2, "position"    # I
    .param p3, "animate"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    .line 279
    .local v0, "oldView":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->replaceActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v1

    return-object v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->createFabWithLabelView(Landroid/content/Context;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v1

    .line 283
    .local v1, "newView":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    nop

    :cond_1
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    .line 284
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 285
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutPosition(I)I

    move-result v8

    .line 286
    .local v8, "layoutPosition":I
    if-nez p2, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_first_bottom_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setPaddingRelative(IIII)V

    .line 288
    invoke-virtual {p0, v1, v8}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setPaddingRelative(IIII)V

    .line 291
    invoke-virtual {p0, v1, v8}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addView(Landroid/view/View;I)V

    .line 293
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    const/4 v4, 0x0

    const/16 v6, 0x12c

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;IIIZ)V

    .line 295
    return-object v1
.end method

.method public addAllActionItems(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;",
            ">;"
        }
    .end annotation

    .line 235
    .local p1, "actionItemCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "COUIFloatingButtonLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 237
    .local v2, "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v2    # "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    goto :goto_0

    .line 239
    :cond_0
    return-object v0
.end method

.method public animationFloatingButtonSlideIn(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 945
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 946
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideInAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$7;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 969
    return-void
.end method

.method public animationFloatingButtonSlideOut()Landroid/animation/ObjectAnimator;
    .locals 8

    .line 977
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 978
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_0
    const/16 v0, 0x8c

    .line 979
    .local v0, "duration":I
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 980
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 981
    .local v2, "bottomMargin":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v4, "translationY"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v7}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 982
    .local v3, "objectAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mSlideOutAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 983
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 985
    new-instance v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$8;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1009
    return-object v3
.end method

.method public closeFloatingButtonMenu()V
    .locals 3

    .line 517
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 518
    return-void
.end method

.method public closeFloatingButtonMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 527
    return-void
.end method

.method public closeFloatingButtonMenu(ZI)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "duration"    # I

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 537
    return-void
.end method

.method public closeFloatingButtonMenu(ZIZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "duration"    # I
    .param p3, "needDrop"    # Z

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 548
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v0, "COUIFloatingButtonItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;>;"
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 455
    .local v2, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v2    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    goto :goto_0

    .line 457
    :cond_0
    return-object v0
.end method

.method public getChildFloatingButtonWithPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "position"    # I

    .line 595
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    return-object v0
.end method

.method public getMainFloatingButton()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object v0
.end method

.method public getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result v0

    return v0
.end method

.method public isFloatingButtonHasChildItem()Z
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1234
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 733
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 734
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 735
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    .line 736
    .local v1, "instanceState":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    if-eqz v1, :cond_0

    .line 737
    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 738
    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 739
    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 741
    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addAllActionItems(Ljava/util/Collection;)Ljava/util/Collection;

    .line 742
    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;)Z

    move-result v2

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 744
    :cond_0
    const-string v2, "superState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 746
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "instanceState":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 747
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$902(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 726
    const-class v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    const-string v1, "superState"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 728
    return-object v0
.end method

.method public openFloatingButtonMenu()V
    .locals 3

    .line 491
    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 492
    return-void
.end method

.method public openFloatingButtonMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 500
    const/4 v0, 0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 501
    return-void
.end method

.method public openFloatingButtonMenu(ZI)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "duration"    # I

    .line 510
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->toggle(ZZIZ)V

    .line 511
    return-void
.end method

.method public removeActionItem(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    .line 308
    .local v0, "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z

    .line 309
    return-object v0
.end method

.method public removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z
    .locals 1
    .param p1, "actionItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeActionItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 335
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    return-object v0
.end method

.method public removeAllActionItems()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 416
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 418
    .local v1, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 419
    .end local v1    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public removeFloatingButtonItemWithWindowHeight(I)V
    .locals 1
    .param p1, "windowHeight"    # I

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeFloatingButtonItemWithWindowHeight(II)V

    .line 389
    return-void
.end method

.method public removeFloatingButtonItemWithWindowHeight(II)V
    .locals 6
    .param p1, "windowHeight"    # I
    .param p2, "offset"    # I

    .line 398
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeight:I

    .line 399
    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeightOffset:I

    .line 400
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 401
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 402
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getContext()Landroid/content/Context;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x48

    add-int/lit8 v5, v5, 0x58

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->dpToPx(Landroid/content/Context;F)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v5}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mCurrentWindowHeightOffset:I

    add-int/2addr v5, p1

    if-le v4, v5, :cond_0

    .line 404
    iget-object v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    goto :goto_1

    .line 406
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    .line 402
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public replaceActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "newActionItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .param p2, "position"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->replaceActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    return-object v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 5
    .param p1, "oldCOUIFloatingButtonItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newCOUIFloatingButtonItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 364
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 365
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v1

    .line 368
    .local v1, "oldView":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    if-eqz v1, :cond_2

    .line 369
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 370
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 371
    return-object v0

    .line 373
    :cond_1
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 374
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->findFloatingButtonItemByPosition(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v3

    invoke-direct {p0, v3, v0, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 375
    invoke-virtual {p0, p2, v2, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->addActionItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;IZ)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    move-result-object v0

    return-object v0

    .line 377
    .end local v2    # "index":I
    :cond_2
    return-object v0
.end method

.method public rotateBackward(Z)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "needDrop"    # Z

    .line 1222
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateAngle:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1223
    .local v0, "rotate":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateBackwardInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1224
    if-eqz p1, :cond_0

    const-wide/16 v1, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1225
    return-object v0
.end method

.method public rotateForward(Landroid/view/View;FZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "angle"    # F
    .param p3, "needDrop"    # Z

    .line 1209
    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateAngle:F

    .line 1210
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1211
    .local v0, "rotateCounterclockwise":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mRotateForwardInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1212
    if-eqz p3, :cond_0

    const-wide/16 v1, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1213
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1214
    return-void
.end method

.method public setAutoSlideInDisable()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 578
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 758
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->getMainFloatingButton()Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setEnabled(Z)V

    .line 760
    return-void
.end method

.method public setFloatingButtonExpandEnable(Z)V
    .locals 2
    .param p1, "isFloatingButtonExpandEnable"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 647
    if-eqz p1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$2;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$3;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void
.end method

.method public setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 605
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mMainFabClosedDrawable:Landroid/graphics/drawable/Drawable;

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->updateMainFabDrawable(ZZ)V

    .line 607
    return-void
.end method

.method public setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "mainFabClosedBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 626
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mInstanceState:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$302(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 627
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->updateMainFloatingButtonBackgroundColor()V

    .line 628
    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 466
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 468
    if-eqz p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mTempOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 472
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mFloatingButtonLabelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 474
    .local v1, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    iget-object v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnActionSelectedProxyListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V

    .line 472
    .end local v1    # "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public setOnChangeListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;)V
    .locals 0
    .param p1, "onChangeListener"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 484
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->mOnChangeListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnChangeListener;

    .line 485
    return-void
.end method
