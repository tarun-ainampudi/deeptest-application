.class public Lcom/google/android/material/slider/Slider;
.super Landroid/view/View;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$AccessibilityHelper;,
        Lcom/google/android/material/slider/Slider$SliderState;,
        Lcom/google/android/material/slider/Slider$AccessibilityEventSender;,
        Lcom/google/android/material/slider/Slider$BasicLabelFormatter;,
        Lcom/google/android/material/slider/Slider$LabelFormatter;,
        Lcom/google/android/material/slider/Slider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;,
        Lcom/google/android/material/slider/Slider$LabelBehavior;,
        Lcom/google/android/material/slider/Slider$TooltipDrawableFactory;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value must be equal to valueFrom plus a multiple of stepSize when using stepSize"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value must be greater or equal to valueFrom, and lower or equal to valueTo"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom must be smaller than valueTo"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo must be greater than valueFrom"

.field private static final HALO_ALPHA:I = 0x3f

.field public static final LABEL_FLOATING:I = 0x0

.field public static final LABEL_GONE:I = 0x2

.field public static final LABEL_WITHIN_BOUNDS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

.field private final accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final activeTrackPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final changeListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/slider/Slider$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final haloPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private haloRadius:I

.field private final inactiveTicksPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final inactiveTrackPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isLongPress:Z

.field private labelBehavior:I

.field private final labelMaker:Lcom/google/android/material/slider/Slider$TooltipDrawableFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private labelPadding:I

.field private final labels:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private lastEvent:Landroid/view/MotionEvent;

.field private final scaledTouchSlop:I

.field private stepSize:F

.field private final thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private thumbRadius:I

.field private tickColorActive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private tickColorInactive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private trackColorInactive:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackTop:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    const-class v0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/slider/Slider;->TAG:Ljava/lang/String;

    .line 193
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 341
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 346
    sget v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    .line 234
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 236
    iput v1, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 241
    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->isLongPress:Z

    .line 250
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 348
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 351
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 354
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 355
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 358
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    .line 359
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 362
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    .line 363
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 366
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 369
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 370
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->loadResources(Landroid/content/res/Resources;)V

    .line 377
    new-instance v0, Lcom/google/android/material/slider/Slider$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/slider/Slider$1;-><init>(Lcom/google/android/material/slider/Slider;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->labelMaker:Lcom/google/android/material/slider/Slider$TooltipDrawableFactory;

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/Slider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/Slider;->setFocusable(Z)V

    .line 395
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 397
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->scaledTouchSlop:I

    .line 399
    new-instance v0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/Slider;)V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    .line 400
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 402
    nop

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 404
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 176
    sget v0, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .line 176
    invoke-static {p0, p1}, Lcom/google/android/material/slider/Slider;->parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/slider/Slider;F)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;
    .param p1, "x1"    # F

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/slider/Slider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/slider/Slider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/slider/Slider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/material/slider/Slider;IF)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/Slider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/material/slider/Slider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/material/slider/Slider;I)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;
    .param p1, "x1"    # I

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->calculateStepIncrement(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/slider/Slider;)Lcom/google/android/material/slider/Slider$AccessibilityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/slider/Slider;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/slider/Slider;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/slider/Slider;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/material/slider/Slider;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;
    .param p1, "x1"    # F

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/material/slider/Slider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/Slider;

    .line 176
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    return v0
.end method

.method private calculateIncrementForKey(Landroid/view/KeyEvent;I)Ljava/lang/Float;
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I

    .line 1928
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->isLongPress:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->calculateStepIncrement(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateStepIncrement()F

    move-result v0

    .line 1929
    .local v0, "increment":F
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1945
    const/4 v1, 0x0

    return-object v1

    .line 1931
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    neg-float v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1934
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1938
    :sswitch_1
    neg-float v0, v0

    .line 1943
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
        0x45 -> :sswitch_1
        0x46 -> :sswitch_2
        0x51 -> :sswitch_2
    .end sparse-switch
.end method

.method private calculateStepIncrement()F
    .locals 2

    .line 1951
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    :goto_0
    return v0
.end method

.method private calculateStepIncrement(I)F
    .locals 3
    .param p1, "stepFactor"    # I

    .line 1959
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateStepIncrement()F

    move-result v0

    .line 1960
    .local v0, "increment":F
    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 1961
    .local v1, "numSteps":F
    int-to-float v2, p1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 1962
    return v0

    .line 1965
    :cond_0
    int-to-float v2, p1

    div-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    return v2
.end method

.method private calculateTicksCoordinates()V
    .locals 6

    .line 1329
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateConfigurationIfDirty()V

    .line 1331
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1333
    .local v0, "tickCount":I
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1334
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_1

    .line 1335
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    .line 1338
    :cond_1
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1339
    .local v1, "interval":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_2

    .line 1340
    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    iget v4, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 1341
    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 1339
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1343
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private calculateTop()I
    .locals 4

    .line 1359
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    .line 1360
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    nop

    :cond_0
    add-int/2addr v0, v2

    .line 1359
    return v0
.end method

.method private createLabelPool()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 703
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 704
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labelMaker:Lcom/google/android/material/slider/Slider$TooltipDrawableFactory;

    invoke-interface {v1}, Lcom/google/android/material/slider/Slider$TooltipDrawableFactory;->createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    nop

    :cond_2
    move v0, v1

    .line 709
    .local v0, "strokeWidth":I
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 710
    .local v2, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeWidth(F)V

    .line 711
    .end local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_1

    .line 712
    :cond_3
    return-void
.end method

.method private dispatchOnChangedFromUser(I)V
    .locals 4
    .param p1, "idx"    # I

    .line 1802
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/Slider$OnChangeListener;

    .line 1803
    .local v1, "listener":Lcom/google/android/material/slider/Slider$OnChangeListener;
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    .line 1804
    .end local v1    # "listener":Lcom/google/android/material/slider/Slider$OnChangeListener;
    goto :goto_0

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->scheduleAccessibilityEventSender(I)V

    .line 1808
    :cond_1
    return-void
.end method

.method private dispatchOnChangedProgramatically()V
    .locals 6

    .line 1794
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/Slider$OnChangeListener;

    .line 1795
    .local v1, "listener":Lcom/google/android/material/slider/Slider$OnChangeListener;
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 1796
    .local v3, "value":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p0, v4, v5}, Lcom/google/android/material/slider/Slider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/Slider;FZ)V

    .line 1797
    .end local v3    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 1798
    .end local v1    # "listener":Lcom/google/android/material/slider/Slider$OnChangeListener;
    :cond_0
    goto :goto_0

    .line 1799
    :cond_1
    return-void
.end method

.method private drawActiveTrack(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1442
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->getActiveRange()[F

    move-result-object v0

    .line 1443
    .local v0, "activeRange":[F
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1444
    .local v1, "right":F
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1445
    .local v2, "left":F
    int-to-float v5, p3

    int-to-float v7, p3

    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1446
    return-void
.end method

.method private drawInactiveTrack(Landroid/graphics/Canvas;II)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1416
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->getActiveRange()[F

    move-result-object v0

    .line 1417
    .local v0, "activeRange":[F
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1418
    .local v1, "right":F
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 1419
    int-to-float v5, p3

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    add-int/2addr v2, p2

    int-to-float v6, v2

    int-to-float v7, p3

    iget-object v8, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1423
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1424
    .local v2, "left":F
    iget v3, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1425
    iget v3, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v5, v3

    int-to-float v6, p3

    int-to-float v8, p3

    iget-object v9, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1427
    :cond_1
    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1474
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1476
    .local v1, "value":Ljava/lang/Float;
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    .line 1477
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p3

    iget v4, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/slider/Slider;->thumbPaint:Landroid/graphics/Paint;

    .line 1476
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1478
    .end local v1    # "value":Ljava/lang/Float;
    goto :goto_0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1482
    .restart local v1    # "value":Ljava/lang/Float;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1483
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    .line 1484
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    .line 1483
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1486
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1488
    .end local v1    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 1489
    :cond_1
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1449
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->getActiveRange()[F

    move-result-object v0

    .line 1450
    .local v0, "activeRange":[F
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v1, v3}, Lcom/google/android/material/slider/Slider;->pivotIndex([FF)I

    move-result v1

    .line 1451
    .local v1, "leftPivotIndex":I
    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-static {v3, v4}, Lcom/google/android/material/slider/Slider;->pivotIndex([FF)I

    move-result v3

    .line 1454
    .local v3, "rightPivotIndex":I
    iget-object v4, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1457
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1464
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/google/android/material/slider/Slider;->ticksCoordinates:[F

    array-length v5, v5

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1469
    return-void
.end method

.method private ensureLabels()V
    .locals 4

    .line 1717
    iget v0, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1719
    return-void

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1724
    .local v0, "labelItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1725
    iget v2, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    if-ne v1, v2, :cond_1

    .line 1727
    goto :goto_1

    .line 1730
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/slider/Slider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 1724
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1733
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v2, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/slider/Slider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 1739
    return-void

    .line 1734
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not enough labels to display all the values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private formatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/Slider$LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1745
    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveRange()[F
    .locals 6

    .line 1404
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getMinimumValue()F

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v0

    .line 1405
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getMaximumValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v2

    .line 1408
    .local v2, "right":F
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v1, :cond_1

    .line 1409
    new-array v3, v5, [F

    aput v2, v3, v4

    aput v0, v3, v1

    return-object v3

    .line 1411
    :cond_1
    new-array v3, v5, [F

    aput v0, v3, v4

    aput v2, v3, v1

    return-object v3
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getValueOfTouchPosition()F
    .locals 6

    .line 1703
    iget v0, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->snapPosition(F)D

    move-result-wide v0

    .line 1706
    .local v0, "position":D
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1707
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 1709
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iget v4, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private invalidateTrack()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1770
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1771
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1773
    return-void
.end method

.method private isInScrollingContainer()Z
    .locals 2

    .line 1783
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1784
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1785
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    const/4 v1, 0x1

    return v1

    .line 1788
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1790
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 407
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    .line 409
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    .line 410
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackTop:I

    .line 412
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->labelPadding:I

    .line 413
    return-void
.end method

.method private maybeDrawHalo(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1493
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->shouldDrawCompatHalo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1495
    .local v0, "centerX":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 1497
    iget v1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    sub-int v1, p3, v1

    int-to-float v4, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    add-int/2addr v1, p3

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1504
    :cond_0
    int-to-float v1, v0

    int-to-float v2, p3

    iget v3, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1506
    .end local v0    # "centerX":I
    :cond_1
    return-void
.end method

.method private moveFocus(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 1916
    iget v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 1917
    iget v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 1918
    iget v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1919
    iget v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    iput v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1921
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 1922
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 1923
    return-void
.end method

.method private normalizeValue(F)F
    .locals 3
    .param p1, "value"    # F

    .line 1434
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 1435
    .local v0, "normalized":F
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1436
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1

    .line 1438
    :cond_0
    return v0
.end method

.method private onStartTrackingTouch()V
    .locals 2

    .line 1811
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;

    .line 1812
    .local v1, "listener":Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    .line 1813
    .end local v1    # "listener":Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    goto :goto_0

    .line 1814
    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 2

    .line 1817
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;

    .line 1818
    .local v1, "listener":Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    .line 1819
    .end local v1    # "listener":Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
    goto :goto_0

    .line 1820
    :cond_0
    return-void
.end method

.method private static parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 489
    sget v0, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 493
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 489
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method private pickActiveThumb()Z
    .locals 18

    .line 1624
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 1625
    return v3

    .line 1628
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/slider/Slider;->getValueOfTouchPosition()F

    move-result v1

    .line 1629
    .local v1, "touchValue":F
    invoke-direct {v0, v1}, Lcom/google/android/material/slider/Slider;->valueToX(F)F

    move-result v4

    .line 1631
    .local v4, "touchX":F
    iget v5, v0, Lcom/google/android/material/slider/Slider;->touchDownX:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1632
    .local v5, "leftXBound":F
    iget v6, v0, Lcom/google/android/material/slider/Slider;->touchDownX:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1634
    .local v6, "rightXBound":F
    const/4 v7, 0x0

    iput v7, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1635
    iget-object v8, v0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v9, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1636
    .local v8, "activeThumbDiff":F
    move v9, v8

    move v8, v7

    .local v8, "i":I
    .local v9, "activeThumbDiff":F
    :goto_0
    iget-object v10, v0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 1637
    iget-object v10, v0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1639
    .local v10, "valueDiff":F
    iget-object v11, v0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-direct {v0, v11}, Lcom/google/android/material/slider/Slider;->valueToX(F)F

    move-result v11

    .line 1640
    .local v11, "valueX":F
    sub-float v12, v11, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1641
    .local v12, "valueDiffX":F
    iget-object v13, v0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v14, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/google/android/material/slider/Slider;->valueToX(F)F

    move-result v13

    sub-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1644
    .local v13, "activeValueDiffX":F
    cmpg-float v14, v5, v11

    if-gez v14, :cond_1

    cmpl-float v14, v6, v11

    if-lez v14, :cond_1

    .line 1645
    iput v8, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1646
    return v3

    .line 1651
    :cond_1
    iget v14, v0, Lcom/google/android/material/slider/Slider;->scaledTouchSlop:I

    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gez v14, :cond_2

    iget v14, v0, Lcom/google/android/material/slider/Slider;->scaledTouchSlop:I

    int-to-float v14, v14

    cmpg-float v14, v13, v14

    if-gez v14, :cond_2

    sub-float v14, v12, v13

    .line 1653
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 1654
    iput v2, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1655
    return v7

    .line 1658
    :cond_2
    cmpg-float v14, v10, v9

    if-gez v14, :cond_3

    .line 1660
    move v9, v10

    .line 1661
    iput v8, v0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1636
    .end local v10    # "valueDiff":F
    .end local v11    # "valueX":F
    .end local v12    # "valueDiffX":F
    .end local v13    # "activeValueDiffX":F
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1665
    .end local v8    # "i":I
    :cond_4
    return v3
.end method

.method private static pivotIndex([FF)I
    .locals 1
    .param p0, "coordinates"    # [F
    .param p1, "position"    # F

    .line 1606
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v5, Lcom/google/android/material/slider/Slider;->DEF_STYLE_RES:I

    const/4 v8, 0x0

    new-array v6, v8, [I

    .line 417
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 419
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 420
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 421
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_value:I

    iget v4, v0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 422
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 424
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 426
    .local v2, "hasTrackColor":Z
    if-eqz v2, :cond_0

    sget v4, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    .line 428
    .local v4, "trackColorInactiveRes":I
    :goto_0
    if-eqz v2, :cond_1

    sget v5, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 431
    .local v5, "trackColorActiveRes":I
    :goto_1
    nop

    .line 432
    invoke-static {v7, v1, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 433
    .local v6, "trackColorInactive":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_2

    move-object v9, v6

    goto :goto_2

    :cond_2
    sget v9, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    .line 436
    invoke-static {v7, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 433
    :goto_2
    invoke-virtual {v0, v9}, Lcom/google/android/material/slider/Slider;->setTrackColorInactive(Landroid/content/res/ColorStateList;)V

    .line 438
    nop

    .line 439
    invoke-static {v7, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 440
    .local v9, "trackColorActive":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_3

    move-object v10, v9

    goto :goto_3

    :cond_3
    sget v10, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    .line 443
    invoke-static {v7, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 440
    :goto_3
    invoke-virtual {v0, v10}, Lcom/google/android/material/slider/Slider;->setTrackColorActive(Landroid/content/res/ColorStateList;)V

    .line 445
    sget v10, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 446
    invoke-static {v7, v1, v10}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 447
    .local v10, "thumbColor":Landroid/content/res/ColorStateList;
    iget-object v11, v0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v11, v10}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 448
    sget v11, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 449
    invoke-static {v7, v1, v11}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 450
    .local v11, "haloColor":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_4

    move-object v12, v11

    goto :goto_4

    :cond_4
    sget v12, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    .line 453
    invoke-static {v7, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 450
    :goto_4
    invoke-virtual {v0, v12}, Lcom/google/android/material/slider/Slider;->setHaloColor(Landroid/content/res/ColorStateList;)V

    .line 455
    sget v12, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 456
    .local v12, "hasTickColor":Z
    if-eqz v12, :cond_5

    sget v13, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_5

    :cond_5
    sget v13, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    .line 458
    .local v13, "tickColorInactiveRes":I
    :goto_5
    if-eqz v12, :cond_6

    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_6

    :cond_6
    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 460
    .local v14, "tickColorActiveRes":I
    :goto_6
    nop

    .line 461
    invoke-static {v7, v1, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 462
    .local v15, "tickColorInactive":Landroid/content/res/ColorStateList;
    if-eqz v15, :cond_7

    move-object v3, v15

    goto :goto_7

    :cond_7
    sget v3, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    .line 465
    invoke-static {v7, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 462
    :goto_7
    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/Slider;->setTickColorInactive(Landroid/content/res/ColorStateList;)V

    .line 467
    nop

    .line 468
    invoke-static {v7, v1, v14}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 469
    .local v3, "tickColorActive":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_8

    move-object v8, v3

    goto :goto_8

    :cond_8
    sget v8, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    .line 472
    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 469
    :goto_8
    invoke-virtual {v0, v8}, Lcom/google/android/material/slider/Slider;->setTickColorActive(Landroid/content/res/ColorStateList;)V

    .line 475
    sget v8, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "hasTrackColor":Z
    .local v16, "hasTrackColor":Z
    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    .line 476
    sget v8, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/slider/Slider;->setHaloRadius(I)V

    .line 478
    sget v8, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    .line 480
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/Slider;->setTrackHeight(I)V

    .line 482
    sget v2, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    .line 483
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 484
    return-void
.end method

.method private scheduleAccessibilityEventSender(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 2007
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2008
    new-instance v0, Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/Slider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/Slider;Lcom/google/android/material/slider/Slider$1;)V

    iput-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    goto :goto_0

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2012
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/Slider$AccessibilityEventSender;->setVirtualViewId(I)V

    .line 2013
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/slider/Slider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2014
    return-void
.end method

.method private setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 4
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;
    .param p2, "value"    # F

    .line 1750
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/Slider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    .line 1754
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1755
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1756
    .local v0, "left":I
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/Slider;->labelPadding:I

    iget v3, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1757
    .local v1, "top":I
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(IIII)V

    .line 1761
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1762
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1763
    invoke-virtual {p1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1765
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 1766
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 674
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    return-void

    .line 686
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 690
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 691
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->createLabelPool()V

    .line 692
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->dispatchOnChangedProgramatically()V

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 694
    return-void

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDrawCompatHalo()Z
    .locals 2

    .line 1509
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->forceDrawCompatHalo:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1511
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1509
    :goto_1
    return v0
.end method

.method private snapActiveThumbToValue(F)Z
    .locals 1
    .param p1, "value"    # F

    .line 1679
    iget v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/Slider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method private snapPosition(F)D
    .locals 5
    .param p1, "position"    # F

    .line 1610
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1611
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1612
    .local v0, "stepCount":I
    int-to-float v1, v0

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1

    .line 1615
    .end local v0    # "stepCount":I
    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method private snapThumbToValue(IF)Z
    .locals 4
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .line 1684
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1685
    const/4 v0, 0x0

    return v0

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1690
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1691
    iget v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    if-ne p1, v0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1695
    :cond_1
    iput p1, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1696
    iput p1, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 1698
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->dispatchOnChangedFromUser(I)V

    .line 1699
    const/4 v0, 0x1

    return v0
.end method

.method private snapTouchPosition()Z
    .locals 1

    .line 1675
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->getValueOfTouchPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->snapActiveThumbToValue(F)Z

    move-result v0

    return v0
.end method

.method private updateHaloHotspot()V
    .locals 7

    .line 1347
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->shouldDrawCompatHalo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1349
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1351
    .local v1, "x":I
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v2

    .line 1352
    .local v2, "y":I
    iget v3, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    add-int/2addr v6, v2

    invoke-static {v0, v3, v4, v5, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1356
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueFrom()V

    .line 528
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValueTo()V

    .line 529
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateStepSize()V

    .line 530
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateValues()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    .line 533
    :cond_0
    return-void
.end method

.method private validateStepSize()V
    .locals 4

    .line 509
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    :goto_0
    return-void
.end method

.method private validateValueFrom()V
    .locals 2

    .line 497
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 500
    return-void

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "valueFrom must be smaller than valueTo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValueTo()V
    .locals 2

    .line 503
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 506
    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "valueTo must be greater than valueFrom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValues()V
    .locals 6

    .line 515
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 516
    .local v1, "value":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 519
    iget v2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    rem-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    .end local v1    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 520
    .restart local v1    # "value":Ljava/lang/Float;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Value must be equal to valueFrom plus a multiple of stepSize when using stepSize"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    .end local v1    # "value":Ljava/lang/Float;
    :cond_1
    :goto_1
    goto :goto_0

    .line 517
    .restart local v1    # "value":Ljava/lang/Float;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Slider value must be greater or equal to valueFrom, and lower or equal to valueTo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    .end local v1    # "value":Ljava/lang/Float;
    :cond_3
    return-void
.end method

.method private valueToX(F)F
    .locals 2
    .param p1, "value"    # F

    .line 1713
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->normalizeValue(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/material/slider/Slider$OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/slider/Slider$OnChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 792
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/Slider$OnSliderTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 815
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method public clearOnChangeListeners()V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 807
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 830
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1991
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1998
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 1824
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1826
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1827
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1828
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1829
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1830
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1831
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1832
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setState([I)Z

    .line 1834
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    goto :goto_0

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1839
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1840
    return-void
.end method

.method forceDrawCompatHalo(Z)V
    .locals 0
    .param p1, "force"    # Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1849
    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider;->forceDrawCompatHalo:Z

    .line 1850
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1986
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .line 783
    iget v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    return v0
.end method

.method public getHaloColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHaloRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 932
    iget v0, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    return v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .line 975
    iget v0, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    return v0
.end method

.method public getMaximumValue()F
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinimumValue()F
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 724
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 890
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    return v0
.end method

.method public getTickColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTickColorActive()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickColorInactive()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1192
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackColorActive()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackColorInactive()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1012
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    return v0
.end method

.method public getTrackSidePadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 995
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    return v0
.end method

.method public getTrackWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1001
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one value is set on the Slider. Use getValues() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 542
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 568
    iget v0, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1281
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1283
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1284
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    .line 1285
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1286
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1290
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityEventSender:Lcom/google/android/material/slider/Slider$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1295
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v2

    .line 1296
    .local v2, "contentViewOverlay":Lcom/google/android/material/internal/ViewOverlayImpl;
    if-eqz v2, :cond_1

    .line 1297
    invoke-interface {v2, v1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    .line 1300
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    .end local v2    # "contentViewOverlay":Lcom/google/android/material/internal/ViewOverlayImpl;
    :cond_1
    goto :goto_0

    .line 1302
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1303
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1365
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1366
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->validateConfigurationIfDirty()V

    .line 1369
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTicksCoordinates()V

    .line 1374
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1376
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTop()I

    move-result v0

    .line 1378
    .local v0, "top":I
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/Slider;->drawInactiveTrack(Landroid/graphics/Canvas;II)V

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getMaximumValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1380
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/slider/Slider;->drawActiveTrack(Landroid/graphics/Canvas;II)V

    .line 1383
    :cond_1
    iget v2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 1384
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->drawTicks(Landroid/graphics/Canvas;)V

    .line 1387
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1388
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->maybeDrawHalo(Landroid/graphics/Canvas;II)V

    .line 1391
    iget v1, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1392
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->ensureLabels()V

    .line 1396
    :cond_4
    iget v1, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/Slider;->drawThumbs(Landroid/graphics/Canvas;II)V

    .line 1397
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1971
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1972
    if-nez p1, :cond_1

    .line 1973
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1974
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1975
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1976
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    goto :goto_1

    .line 1979
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 1981
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1854
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1856
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1857
    iput v1, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1861
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    .line 1862
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    const/16 v0, 0x45

    if-eq p1, v0, :cond_2

    const/16 v0, 0x51

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1878
    :cond_1
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/Slider;->moveFocus(I)V

    .line 1879
    return v2

    .line 1874
    :cond_2
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/Slider;->moveFocus(I)V

    .line 1875
    return v2

    .line 1882
    :cond_3
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    iput v0, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1883
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 1884
    return v2

    .line 1864
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1865
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/Slider;->moveFocus(I)V

    .line 1866
    return v2

    .line 1867
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1868
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/Slider;->moveFocus(I)V

    .line 1869
    return v2

    .line 1871
    :cond_6
    return v1

    .line 1889
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/material/slider/Slider;->isLongPress:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->isLongPress:Z

    .line 1890
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/slider/Slider;->calculateIncrementForKey(Landroid/view/KeyEvent;I)Ljava/lang/Float;

    move-result-object v0

    .line 1891
    .local v0, "increment":Ljava/lang/Float;
    if-eqz v0, :cond_a

    .line 1892
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 1893
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1895
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1896
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iget v4, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    invoke-static {v1, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 1897
    .local v1, "clamped":F
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->snapActiveThumbToValue(F)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1898
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 1899
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 1901
    :cond_9
    return v2

    .line 1906
    .end local v0    # "increment":Ljava/lang/Float;
    .end local v1    # "clamped":F
    :cond_a
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->isLongPress:Z

    .line 1912
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1307
    iget v0, p0, Lcom/google/android/material/slider/Slider;->widgetHeight:I

    iget v1, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    .line 1311
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    nop

    :cond_0
    add-int/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    .line 1309
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1307
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 1313
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2045
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/Slider$SliderState;

    .line 2046
    .local v0, "sliderState":Lcom/google/android/material/slider/Slider$SliderState;
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider$SliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2048
    iget v1, v0, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    iput v1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 2049
    iget v1, v0, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    iput v1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 2050
    iget-object v1, v0, Lcom/google/android/material/slider/Slider$SliderState;->values:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    .line 2051
    iget v1, v0, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    iput v1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 2052
    iget-boolean v1, v0, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    if-eqz v1, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestFocus()Z

    .line 2055
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->dispatchOnChangedProgramatically()V

    .line 2056
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 2033
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2034
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/slider/Slider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/Slider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 2035
    .local v1, "sliderState":Lcom/google/android/material/slider/Slider$SliderState;
    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    iput v2, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    .line 2036
    iget v2, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    iput v2, v1, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    .line 2037
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/google/android/material/slider/Slider$SliderState;->values:Ljava/util/ArrayList;

    .line 2038
    iget v2, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    iput v2, v1, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    .line 2039
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->hasFocus()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    .line 2040
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1318
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    .line 1321
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1322
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->calculateTicksCoordinates()V

    .line 1325
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 1326
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1516
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1517
    return v1

    .line 1519
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1520
    .local v0, "x":F
    iget v2, p0, Lcom/google/android/material/slider/Slider;->trackSidePadding:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/Slider;->trackWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    .line 1521
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    .line 1522
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/Slider;->touchPosition:F

    .line 1524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1548
    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    if-nez v2, :cond_2

    .line 1550
    iget v2, p0, Lcom/google/android/material/slider/Slider;->touchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/Slider;->scaledTouchSlop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1551
    return v1

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1554
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->onStartTrackingTouch()V

    .line 1557
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1559
    goto/16 :goto_1

    .line 1562
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 1563
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapTouchPosition()Z

    .line 1564
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 1565
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1566
    goto/16 :goto_1

    .line 1568
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 1570
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->lastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->lastEvent:Landroid/view/MotionEvent;

    .line 1571
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->lastEvent:Landroid/view/MotionEvent;

    .line 1572
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->lastEvent:Landroid/view/MotionEvent;

    .line 1573
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 1574
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->pickActiveThumb()Z

    .line 1577
    :cond_4
    iget v1, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1578
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapTouchPosition()Z

    .line 1579
    iput v2, p0, Lcom/google/android/material/slider/Slider;->activeThumbIdx:I

    .line 1581
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1582
    .local v2, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1583
    .end local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1584
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->onStopTrackingTouch()V

    .line 1585
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1586
    goto :goto_1

    .line 1526
    :pswitch_2
    iput v0, p0, Lcom/google/android/material/slider/Slider;->touchDownX:F

    .line 1530
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->isInScrollingContainer()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1531
    goto :goto_1

    .line 1533
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1535
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1537
    goto :goto_1

    .line 1540
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestFocus()Z

    .line 1541
    iput-boolean v3, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    .line 1542
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->snapTouchPosition()Z

    .line 1543
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->updateHaloHotspot()V

    .line 1544
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1545
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->onStartTrackingTouch()V

    .line 1546
    nop

    .line 1592
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/slider/Slider;->thumbIsPressed:Z

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/Slider;->setPressed(Z)V

    .line 1594
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/Slider;->lastEvent:Landroid/view/MotionEvent;

    .line 1595
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/Slider$OnChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/slider/Slider$OnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 801
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/Slider$OnSliderTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 824
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 825
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1273
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1276
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/slider/Slider;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1277
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 773
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 776
    iput p1, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    .line 777
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->accessibilityHelper:Lcom/google/android/material/slider/Slider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 778
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 779
    return-void

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHaloColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "haloColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1047
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    return-void

    .line 1051
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->haloColor:Landroid/content/res/ColorStateList;

    .line 1052
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->shouldDrawCompatHalo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1053
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1054
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1055
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1057
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1059
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->haloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1062
    :goto_0
    return-void
.end method

.method public setHaloRadius(I)V
    .locals 3
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 942
    iget v0, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    if-ne p1, v0, :cond_0

    .line 943
    return-void

    .line 946
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    .line 947
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->shouldDrawCompatHalo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 949
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 950
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/google/android/material/slider/Slider;->haloRadius:I

    invoke-static {v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 952
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_0

    .line 953
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 955
    :goto_0
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 964
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setHaloRadius(I)V

    .line 965
    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1
    .param p1, "labelBehavior"    # I

    .line 986
    iget v0, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    if-eq v0, p1, :cond_0

    .line 987
    iput p1, p0, Lcom/google/android/material/slider/Slider;->labelBehavior:I

    .line 988
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->requestLayout()V

    .line 990
    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/Slider$LabelFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/google/android/material/slider/Slider$LabelFormatter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 847
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->formatter:Lcom/google/android/material/slider/Slider$LabelFormatter;

    .line 848
    return-void
.end method

.method public setStepSize(F)V
    .locals 2
    .param p1, "stepSize"    # F

    .line 746
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 749
    iget v0, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 750
    iput p1, p0, Lcom/google/android/material/slider/Slider;->stepSize:F

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 754
    :cond_0
    return-void

    .line 747
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The stepSize must be 0, or a factor of the valueFrom-valueTo range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1083
    return-void
.end method

.method public setThumbElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 868
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 869
    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1, "elevation"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 878
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    .line 879
    return-void
.end method

.method public setThumbRadius(I)V
    .locals 4
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 900
    iget v0, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    if-ne p1, v0, :cond_0

    .line 901
    return-void

    .line 904
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    .line 906
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 907
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 906
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 908
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->thumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/slider/Slider;->thumbRadius:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 910
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 911
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 920
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    .line 921
    return-void
.end method

.method public setTickColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1116
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTickColorInactive(Landroid/content/res/ColorStateList;)V

    .line 1117
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTickColorActive(Landroid/content/res/ColorStateList;)V

    .line 1118
    return-void
.end method

.method public setTickColorActive(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1141
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    return-void

    .line 1144
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 1145
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1147
    return-void
.end method

.method public setTickColorInactive(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1170
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    return-void

    .line 1173
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 1174
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1176
    return-void
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1209
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTrackColorInactive(Landroid/content/res/ColorStateList;)V

    .line 1210
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTrackColorActive(Landroid/content/res/ColorStateList;)V

    .line 1211
    return-void
.end method

.method public setTrackColorActive(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1234
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    return-void

    .line 1237
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 1238
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1240
    return-void
.end method

.method public setTrackColorInactive(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1263
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    return-void

    .line 1266
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 1267
    iget-object v0, p0, Lcom/google/android/material/slider/Slider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/Slider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/Slider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->invalidate()V

    .line 1269
    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1
    .param p1, "trackHeight"    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation

        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1022
    iget v0, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    if-eq v0, p1, :cond_0

    .line 1023
    iput p1, p0, Lcom/google/android/material/slider/Slider;->trackHeight:I

    .line 1024
    invoke-direct {p0}, Lcom/google/android/material/slider/Slider;->invalidateTrack()V

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 1027
    :cond_0
    return-void
.end method

.method public setValue(F)V
    .locals 3
    .param p1, "value"    # F

    .line 625
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setValues([Ljava/lang/Float;)V

    .line 626
    return-void
.end method

.method public setValueFrom(F)V
    .locals 1
    .param p1, "valueFrom"    # F

    .line 556
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueFrom:F

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    .line 558
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 559
    return-void
.end method

.method public setValueTo(F)V
    .locals 1
    .param p1, "valueTo"    # F

    .line 582
    iput p1, p0, Lcom/google/android/material/slider/Slider;->valueTo:F

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/Slider;->dirtyConfig:Z

    .line 584
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 585
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 666
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 667
    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 646
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 647
    return-void
.end method
