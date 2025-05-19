.class public Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;
.super Ljava/lang/Object;
.source "COUISeekBarHelper.java"


# static fields
.field static final BACKGROUND_RADIUS_SCALE:F = 2.0f

.field static final DEFAULT_BACKGROUND_COLOR:I

.field static final DEFAULT_BACKGROUND_RADIUS:F = 1.0f

.field static final DEFAULT_PROGRESS_COLOR:I

.field static final DEFAULT_PROGRESS_RADIUS:F = 1.0f

.field static final DEFAULT_PROGRESS_SCALE_RADIUS:F = 2.0f

.field static final DEFAULT_SECONDARYPROGRESS_COLOR:I

.field static final DEFAULT_THUMB_COLOR:I = -0x1

.field static final DEFAULT_THUMB_IN_RADIUS:F = 4.0f

.field static final DEFAULT_THUMB_OUT_RADIUS:F = 6.0f

.field static final DEFAULT_THUMB_SCALE_IN_RADIUS:F = 3.67f

.field static final DEFAULT_THUMB_SCALE_OUT_RADIUS:F = 7.0f

.field static final DEFAULT_THUMB_SHADOW_RADIUS:F = 14.0f

.field static final FAST_MOVE_SCALE_RANGE:F = 2.0f

.field static final FAST_MOVE_VELOCITY:I = 0x5f

.field static final PROGRESS_RADIUS_SCALE:F = 2.667f

.field static final RELEASE_ANIM_DURATION:I = 0x78

.field static final THUMB_IN_RADIUS_SCALE:F = 1.417f

.field static final THUMB_OUT_RADIUS_SCALE:F = 1.722f

.field static final TOUCH_ANIMATION_ENLARGE_DURATION:I = 0x73

.field static final TOUCH_ANIMATION_SHRINK_DURATION:I = 0x57

.field static final VELOCITY_COMPUTE_TIME:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_BACKGROUND_COLOR:I

    .line 38
    const-string v0, "#4D4D4D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_PROGRESS_COLOR:I

    .line 39
    const/16 v0, 0xff

    const/16 v1, 0x4c

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_SECONDARYPROGRESS_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p2, "defaultValue"    # I

    .line 60
    if-nez p1, :cond_0

    .line 61
    return p2

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 64
    .local v0, "state":[I
    invoke-virtual {p1, v0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1
.end method

.method static getDefaultColor(Landroid/view/View;Landroid/content/res/ColorStateList;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 68
    sget v0, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->DEFAULT_BACKGROUND_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBarHelper;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    return v0
.end method

.method static touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "view"    # Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 73
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 74
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
