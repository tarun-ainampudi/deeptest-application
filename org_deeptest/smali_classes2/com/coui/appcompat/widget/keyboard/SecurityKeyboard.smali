.class public Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;,
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_CHANGE_SYMBOLS:I = -0x7

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_GO:I = 0xa

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_SPACE:I = 0x20

.field private static SEARCH_DISTANCE:F = 0.0f

.field public static final SECURITYKEYBOARD:I = 0x1

.field static final TAG:Ljava/lang/String; = "SecurityKeyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field public static final TYPE_NUMBER:I = 0x3

.field public static final TYPE_QWERTY:I = 0x1

.field public static final TYPE_SPECIAL_SYMBOLS:I = 0x4

.field public static final TYPE_SYSMBOLS:I = 0x2

.field public static final UNLOCKKEYBOARD:I = 0x2


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeyboardType:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mNewShifted:I

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    .line 633
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p3, "modeId"    # I

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mNewShifted:I

    .line 128
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 133
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeyIndices:[I

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    .line 1049
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 670
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    .line 671
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayHeight:I

    .line 674
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    .line 675
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    .line 676
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    .line 677
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mModifierKeys:Ljava/util/List;

    .line 680
    iput p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardMode:I

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->onSecurityResize(Landroid/content/Context;)V

    .line 683
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mNewShifted:I

    .line 128
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 133
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeyIndices:[I

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    .line 1049
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    .line 647
    iput p4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    .line 648
    iput p5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayHeight:I

    .line 650
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    .line 651
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    .line 652
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    .line 653
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mModifierKeys:Ljava/util/List;

    .line 656
    iput p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardMode:I

    .line 657
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 658
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .line 702
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;I)V

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, "x":I
    const/4 v2, 0x0

    .line 705
    .local v2, "y":I
    const/4 v3, 0x0

    .line 706
    .local v3, "column":I
    const/4 v4, 0x0

    iput v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    .line 708
    new-instance v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 709
    .local v5, "row":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    iget v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    iput v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    .line 710
    iget v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    iput v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    .line 711
    iget v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    iput v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    .line 712
    iget v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    iput v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->verticalGap:I

    .line 713
    const/16 v6, 0xc

    iput v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->rowEdgeFlags:I

    .line 714
    const/4 v6, -0x1

    move/from16 v7, p4

    if-ne v7, v6, :cond_0

    const v6, 0x7fffffff

    goto :goto_0

    :cond_0
    move v6, v7

    .line 715
    .local v6, "maxColumns":I
    :goto_0
    move v8, v1

    move v1, v4

    .local v1, "i":I
    .local v8, "x":I
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 716
    move-object/from16 v9, p3

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 717
    .local v10, "c":C
    if-ge v3, v6, :cond_1

    iget v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    add-int/2addr v11, v8

    add-int v11, v11, p5

    iget v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    if-le v11, v12, :cond_2

    .line 719
    :cond_1
    const/4 v8, 0x0

    .line 720
    iget v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    iget v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    .line 721
    const/4 v3, 0x0

    .line 723
    :cond_2
    new-instance v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    invoke-direct {v11, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;)V

    .line 724
    .local v11, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iput v8, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    .line 725
    iput v2, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    .line 726
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 727
    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v10, v13, v4

    iput-object v13, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    .line 728
    add-int/2addr v3, v12

    .line 729
    iget v12, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v13, v11, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    .line 730
    iget-object v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v12, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    if-le v8, v12, :cond_3

    .line 733
    iput v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    .line 715
    .end local v10    # "c":C
    .end local v11    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    .end local v1    # "i":I
    :cond_4
    move-object/from16 v9, p3

    iget v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalHeight:I

    .line 737
    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 11

    .line 878
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    .line 879
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    .line 880
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mGridNeighbors:[[I

    .line 881
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 882
    .local v0, "indices":[I
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 883
    .local v1, "gridWidth":I
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    .line 884
    .local v2, "gridHeight":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "x":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 885
    move v5, v3

    .local v5, "y":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 886
    const/4 v6, 0x0

    .line 887
    .local v6, "count":I
    move v7, v6

    move v6, v3

    .local v6, "i":I
    .local v7, "count":I
    :goto_2
    iget-object v8, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 888
    iget-object v8, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 889
    .local v8, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    invoke-virtual {v8, v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 890
    invoke-virtual {v8, v9, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    .line 891
    invoke-virtual {v8, v9, v10}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    .line 893
    invoke-virtual {v8, v4, v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    if-ge v9, v10, :cond_1

    .line 894
    :cond_0
    add-int/lit8 v9, v7, 0x1

    .local v9, "count":I
    aput v6, v0, v7

    .line 887
    move v7, v9

    .end local v8    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v9    # "count":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 897
    .end local v6    # "i":I
    :cond_2
    new-array v6, v7, [I

    .line 898
    .local v6, "cell":[I
    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget-object v8, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mGridNeighbors:[[I

    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    div-int v9, v5, v9

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    div-int v10, v4, v10

    add-int/2addr v9, v10

    aput-object v6, v8, v9

    .line 885
    .end local v6    # "cell":[I
    .end local v7    # "count":I
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 884
    .end local v5    # "y":I
    :cond_3
    iget v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    add-int/2addr v4, v5

    goto :goto_0

    .line 902
    .end local v4    # "x":I
    :cond_4
    return-void
.end method

.method public static getDensityScale(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1069
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1070
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 1074
    .local v0, "defaultDensity":F
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    .line 1076
    .local v1, "densityNow":F
    div-float v2, v0, v1

    return v2
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .line 1037
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1038
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    return p3

    .line 1039
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1040
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    .line 1041
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1043
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 1045
    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 933
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 934
    .local v0, "inKey":Z
    const/4 v1, 0x0

    .line 935
    .local v1, "inRow":Z
    const/4 v9, 0x0

    .line 936
    .local v9, "leftMostKey":Z
    const/4 v2, 0x0

    .line 937
    .local v2, "row":I
    const/4 v3, 0x0

    .line 938
    .local v3, "x":I
    const/4 v4, 0x0

    .line 939
    .local v4, "y":I
    const/4 v5, 0x0

    .line 940
    .local v5, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    const/4 v6, 0x0

    .line 941
    .local v6, "currentRow":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 942
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v11, 0x0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v1, v0

    move v0, v11

    .end local v2    # "row":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v6    # "currentRow":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .local v0, "skipRow":Z
    .local v1, "inKey":Z
    .local v12, "y":I
    .local v13, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .local v14, "currentRow":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .local v15, "inRow":Z
    .local v16, "row":I
    .local v17, "x":I
    :goto_0
    move/from16 v18, v0

    .line 946
    .end local v0    # "skipRow":Z
    .local v18, "skipRow":Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    .local v6, "event":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    .line 947
    const/4 v0, 0x2

    if-ne v6, v0, :cond_9

    .line 948
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v2, :cond_2

    .line 950
    const/4 v2, 0x1

    .line 951
    .end local v15    # "inRow":Z
    .local v2, "inRow":Z
    const/16 v17, 0x0

    .line 952
    :try_start_1
    invoke-virtual {v7, v10, v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    move-result-object v3

    move-object v14, v3

    .line 953
    iget-object v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget v3, v14, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mode:I

    if-eqz v3, :cond_0

    iget v3, v14, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mode:I

    iget v4, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v11

    :goto_1
    move v3, v5

    .line 955
    .end local v18    # "skipRow":Z
    .local v3, "skipRow":Z
    if-eqz v3, :cond_1

    .line 956
    :try_start_2
    invoke-direct {v7, v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 957
    const/4 v2, 0x0

    goto :goto_2

    .line 997
    .end local v0    # "tag":Ljava/lang/String;
    .end local v6    # "event":I
    :catch_0
    move-exception v0

    move v15, v2

    move/from16 v18, v3

    goto/16 :goto_9

    .line 980
    .end local v2    # "inRow":Z
    .end local v3    # "skipRow":Z
    .local v0, "skipRow":Z
    .restart local v15    # "inRow":Z
    .local v21, "event":I
    :cond_1
    :goto_2
    move v15, v2

    move v0, v3

    move/from16 v21, v6

    goto/16 :goto_7

    .line 997
    .end local v0    # "skipRow":Z
    .end local v15    # "inRow":Z
    .end local v21    # "event":I
    .restart local v2    # "inRow":Z
    .restart local v18    # "skipRow":Z
    :catch_1
    move-exception v0

    move v15, v2

    goto/16 :goto_9

    .line 959
    .end local v2    # "inRow":Z
    .local v0, "tag":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v15    # "inRow":Z
    :cond_2
    :try_start_3
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v2, :cond_7

    .line 960
    const/16 v19, 0x1

    .line 961
    .end local v1    # "inKey":Z
    .local v19, "inKey":Z
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move/from16 v4, v17

    move/from16 v20, v5

    move v5, v12

    move/from16 v21, v6

    .end local v6    # "event":I
    .restart local v21    # "event":I
    move-object/from16 v6, p2

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->createKeyFromXml(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 962
    .end local v13    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .local v1, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :try_start_5
    iget-object v2, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v11

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 965
    move v2, v11

    .local v2, "i":I
    :goto_3
    iget-object v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 966
    iget-object v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    .line 967
    iget-object v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aput-object v1, v3, v2

    .line 968
    iget-object v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeyIndices:[I

    iget-object v4, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    .line 969
    goto :goto_4

    .line 965
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 972
    .end local v2    # "i":I
    :cond_4
    :goto_4
    iget-object v2, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 973
    :cond_5
    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v11

    const/4 v3, -0x6

    if-ne v2, v3, :cond_6

    .line 974
    iget-object v2, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_6
    :goto_5
    iget-object v2, v14, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 980
    move-object v13, v1

    move/from16 v0, v18

    move/from16 v1, v19

    goto :goto_7

    .line 997
    .end local v0    # "tag":Ljava/lang/String;
    .end local v21    # "event":I
    :catch_2
    move-exception v0

    move-object v13, v1

    goto :goto_6

    .end local v1    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v13    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :catch_3
    move-exception v0

    .end local v19    # "inKey":Z
    .local v1, "inKey":Z
    :goto_6
    move/from16 v1, v19

    goto :goto_9

    .line 977
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v6    # "event":I
    :cond_7
    move/from16 v21, v6

    .end local v6    # "event":I
    .restart local v21    # "event":I
    :try_start_6
    const-string v2, "Keyboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 978
    invoke-direct {v7, v10, v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 980
    .end local v0    # "tag":Ljava/lang/String;
    :cond_8
    move/from16 v0, v18

    .end local v18    # "skipRow":Z
    .local v0, "skipRow":Z
    :goto_7
    goto/16 :goto_0

    .end local v0    # "skipRow":Z
    .end local v21    # "event":I
    .restart local v6    # "event":I
    .restart local v18    # "skipRow":Z
    :cond_9
    move/from16 v21, v6

    .end local v6    # "event":I
    .restart local v21    # "event":I
    const/4 v0, 0x3

    move/from16 v2, v21

    .end local v21    # "event":I
    .local v2, "event":I
    if-ne v2, v0, :cond_c

    .line 981
    if-eqz v1, :cond_b

    .line 982
    const/4 v1, 0x0

    .line 983
    iget v0, v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    iget v3, v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    add-int/2addr v0, v3

    add-int v3, v17, v0

    .line 984
    .end local v17    # "x":I
    .local v3, "x":I
    :try_start_7
    iget v0, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    if-le v3, v0, :cond_a

    .line 985
    iput v3, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 942
    .end local v2    # "event":I
    :cond_a
    move/from16 v17, v3

    goto :goto_8

    .line 997
    :catch_4
    move-exception v0

    move/from16 v17, v3

    goto :goto_9

    .line 987
    .end local v3    # "x":I
    .restart local v2    # "event":I
    .restart local v17    # "x":I
    :cond_b
    if-eqz v15, :cond_c

    .line 988
    const/4 v15, 0x0

    .line 989
    :try_start_8
    iget v0, v14, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->verticalGap:I

    add-int/2addr v12, v0

    .line 990
    iget v0, v14, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    add-int/2addr v12, v0

    .line 991
    add-int/lit8 v16, v16, 0x1

    .line 942
    .end local v2    # "event":I
    .end local v18    # "skipRow":Z
    .restart local v0    # "skipRow":Z
    :cond_c
    :goto_8
    move/from16 v0, v18

    goto/16 :goto_0

    .line 1000
    .end local v0    # "skipRow":Z
    .restart local v18    # "skipRow":Z
    :cond_d
    goto :goto_a

    .line 997
    :catch_5
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    const-string v2, "SecurityKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1001
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    iget v0, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    sub-int v0, v12, v0

    iput v0, v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalHeight:I

    .line 1002
    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 1016
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1019
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyWidth:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    .line 1022
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyHeight:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    .line 1025
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiHorizontalGap:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayWidth:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    .line 1028
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiVerticalGap:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    .line 1031
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    .line 1032
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mProximityThreshold:I

    .line 1033
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1034
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1008
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 1009
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    nop

    .line 1013
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 929
    new-instance v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;-><init>(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 924
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;-><init>(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 822
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .line 785
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .line 1064
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 826
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 913
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->computeNearestNeighbors()V

    .line 914
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 915
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 916
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    .line 920
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getNewShifted()I
    .locals 1

    .line 845
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mNewShifted:I

    return v0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShifted:Z

    return v0
.end method

.method public onSecurityResize(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 1080
    invoke-static {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v0

    .line 1081
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1082
    .local v1, "numRows":I
    const/4 v2, 0x0

    .line 1083
    .local v2, "newWidth":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "rowIndex":I
    .local v4, "newWidth":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1084
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    .line 1085
    .local v5, "row":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    iget-object v6, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1086
    .local v6, "numKeys":I
    const/4 v7, 0x0

    .line 1087
    .local v7, "x":I
    const/4 v8, 0x0

    .line 1088
    .local v8, "y":I
    iget v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->verticalGap:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->verticalGap:I

    .line 1089
    iget v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    .line 1090
    iget v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    .line 1091
    iget v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    .line 1092
    move v9, v4

    move v4, v3

    .local v4, "keyIndex":I
    .local v9, "newWidth":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 1093
    iget-object v10, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1094
    .local v10, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    .line 1095
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v7, v11

    .line 1096
    iput v7, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    .line 1097
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    .line 1098
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    .line 1099
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    .line 1100
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v7, v11

    .line 1101
    if-le v7, v9, :cond_0

    .line 1102
    move v9, v7

    .line 1092
    .end local v10    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1083
    .end local v4    # "keyIndex":I
    .end local v5    # "row":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .end local v6    # "numKeys":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v4, v9

    goto :goto_0

    .line 1106
    .end local v2    # "rowIndex":I
    .end local v9    # "newWidth":I
    .local v4, "newWidth":I
    :cond_2
    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    .line 1107
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalHeight:I

    .line 1108
    return-void
.end method

.method final resize(II)V
    .locals 13
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 742
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 747
    .local v0, "numRows":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "rowIndex":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 748
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    .line 749
    .local v3, "row":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    iget-object v4, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 750
    .local v4, "numKeys":I
    const/4 v5, 0x0

    .line 751
    .local v5, "totalGap":I
    const/4 v6, 0x0

    .line 752
    .local v6, "totalWidth":I
    move v7, v6

    move v6, v5

    move v5, v1

    .local v5, "keyIndex":I
    .local v6, "totalGap":I
    .local v7, "totalWidth":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 753
    iget-object v8, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 754
    .local v8, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-lez v5, :cond_1

    .line 755
    iget v9, v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v6, v9

    .line 757
    :cond_1
    iget v9, v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v7, v9

    .line 752
    .end local v8    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 759
    .end local v5    # "keyIndex":I
    :cond_2
    add-int v5, v6, v7

    if-le v5, p1, :cond_3

    .line 760
    const/4 v5, 0x0

    .line 761
    .local v5, "x":I
    sub-int v8, p1, v6

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 762
    .local v8, "scaleFactor":F
    move v9, v5

    move v5, v1

    .local v5, "keyIndex":I
    .local v9, "x":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 763
    iget-object v10, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 764
    .local v10, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    .line 765
    iput v9, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    .line 766
    iget v11, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v12, v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 762
    .end local v10    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 747
    .end local v3    # "row":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .end local v4    # "numKeys":I
    .end local v5    # "keyIndex":I
    .end local v6    # "totalGap":I
    .end local v7    # "totalWidth":I
    .end local v8    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .end local v2    # "rowIndex":I
    :cond_4
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mTotalWidth:I

    .line 774
    return-void

    .line 743
    .end local v0    # "numRows":I
    :cond_5
    :goto_3
    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .line 789
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHorizontalGap:I

    .line 790
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 805
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultHeight:I

    .line 806
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 813
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultWidth:I

    .line 814
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0
    .param p1, "keyboardType"    # I

    .line 1060
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mKeyboardType:I

    .line 1061
    return-void
.end method

.method public setNewShifted(I)V
    .locals 7
    .param p1, "newshiftState"    # I

    .line 830
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 831
    .local v4, "shiftKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-eqz v4, :cond_2

    .line 832
    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    goto :goto_1

    .line 834
    :cond_0
    if-nez p1, :cond_2

    .line 835
    iput-boolean v2, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    goto :goto_2

    .line 833
    :cond_1
    :goto_1
    iput-boolean v5, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    .line 830
    .end local v4    # "shiftKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 840
    :cond_3
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mNewShifted:I

    .line 842
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .line 849
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShiftKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 850
    .local v4, "shiftKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-eqz v4, :cond_0

    .line 851
    iput-boolean p1, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    .line 849
    .end local v4    # "shiftKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 854
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShifted:Z

    if-eq v0, p1, :cond_2

    .line 855
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mShifted:Z

    .line 856
    const/4 v0, 0x1

    return v0

    .line 858
    :cond_2
    return v2
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .line 797
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->mDefaultVerticalGap:I

    .line 798
    return-void
.end method
