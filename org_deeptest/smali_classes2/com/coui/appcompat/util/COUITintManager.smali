.class public final Lcom/coui/appcompat/util/COUITintManager;
.super Ljava/lang/Object;
.source "COUITintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final INSTANCE_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/coui/appcompat/util/COUITintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_BE_USED:Z

.field private static final TAG:Ljava/lang/String; = "TintManager"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mTintLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/coui/appcompat/util/COUITintManager;->SHOULD_BE_USED:Z

    .line 50
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/coui/appcompat/util/COUITintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/coui/appcompat/util/COUITintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    .line 53
    new-instance v0, Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/util/COUITintManager;->COLOR_FILTER_CACHE:Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method

.method private createCOUIDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 185
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 186
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 189
    .local v2, "i":I
    sget-object v3, Lcom/coui/appcompat/util/COUIThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 190
    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlDisabled:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/util/COUIThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 193
    sget-object v3, Lcom/coui/appcompat/util/COUIThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 194
    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlPressed:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 197
    sget-object v3, Lcom/coui/appcompat/util/COUIThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 198
    sget v3, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 201
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static get(Landroid/content/Context;)Lcom/coui/appcompat/util/COUITintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/coui/appcompat/util/COUITintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/util/COUITintManager;

    .line 73
    .local v0, "tm":Lcom/coui/appcompat/util/COUITintManager;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lcom/coui/appcompat/util/COUITintManager;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/util/COUITintManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 75
    sget-object v1, Lcom/coui/appcompat/util/COUITintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 64
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 247
    if-nez p2, :cond_0

    .line 249
    sget-object p2, Lcom/coui/appcompat/util/COUITintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 253
    :cond_0
    sget-object v0, Lcom/coui/appcompat/util/COUITintManager;->COLOR_FILTER_CACHE:Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 255
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_1

    .line 257
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 258
    sget-object v1, Lcom/coui/appcompat/util/COUITintManager;->COLOR_FILTER_CACHE:Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;

    invoke-virtual {v1, p1, p2, v0}, Lcom/coui/appcompat/util/COUITintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 261
    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 262
    return-void
.end method

.method public static tintViewBackground(Landroid/view/View;Lcom/coui/appcompat/util/COUITintInfo;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tint"    # Lcom/coui/appcompat/util/COUITintInfo;

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p1, Lcom/coui/appcompat/util/COUITintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p1, Lcom/coui/appcompat/util/COUITintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lcom/coui/appcompat/util/COUITintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 233
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-boolean v2, p1, Lcom/coui/appcompat/util/COUITintInfo;->mHasTintMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/coui/appcompat/util/COUITintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 230
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/util/COUITintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 239
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 244
    :cond_2
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/util/COUITintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "failIfNotKnown"    # Z

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/util/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 90
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_0
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/util/COUITintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 101
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_3

    .line 103
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 104
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/util/COUITintManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 108
    .local v3, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v3, :cond_2

    .line 109
    invoke-static {v1, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 111
    .end local v3    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/util/COUITintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    .line 113
    .local v3, "usedColorFilter":Z
    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 116
    const/4 v1, 0x0

    .line 120
    .end local v2    # "tintList":Landroid/content/res/ColorStateList;
    .end local v3    # "usedColorFilter":Z
    :cond_4
    :goto_0
    return-object v1
.end method

.method public final getTintList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "resId"    # I

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/util/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 156
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/util/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/util/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    nop

    .line 161
    .local v1, "tint":Landroid/content/res/ColorStateList;
    :cond_1
    if-nez v1, :cond_4

    .line 164
    sget v2, Lcoui/support/appcompat/R$drawable;->coui_back_arrow_normal:I

    if-ne p1, v2, :cond_2

    .line 165
    invoke-direct {p0, v0}, Lcom/coui/appcompat/util/COUITintManager;->createCOUIDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 169
    :cond_2
    if-eqz v1, :cond_4

    .line 170
    iget-object v2, p0, Lcom/coui/appcompat/util/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    if-nez v2, :cond_3

    .line 172
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/util/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/util/COUITintManager;->mTintLists:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    :cond_4
    return-object v1
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "resId"    # I

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public final tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p1, "resId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Lcom/coui/appcompat/util/COUITintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 125
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 128
    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v3, 0x0

    .line 129
    .local v3, "colorAttrSet":Z
    const/4 v4, 0x0

    .line 130
    .local v4, "colorAttr":I
    const/4 v5, -0x1

    .line 132
    .local v5, "alpha":I
    if-eqz v3, :cond_2

    .line 133
    invoke-static {v0, v4}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 134
    .local v1, "color":I
    invoke-static {p2, v1, v2}, Lcom/coui/appcompat/util/COUITintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 137
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 144
    :cond_1
    const/4 v6, 0x1

    return v6

    .line 146
    .end local v1    # "color":I
    :cond_2
    return v1
.end method
