.class final Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "COUIRoundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "COUIRoundDrawableState"
.end annotation


# instance fields
.field public alpha:I

.field public colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public fillColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public radius:F

.field public strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public strokeTintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public strokeWidth:F

.field public tintList:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 264
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 266
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 268
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 270
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 272
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 275
    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;)V
    .locals 1
    .param p1, "state"    # Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;

    .line 281
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 264
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 266
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 268
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 270
    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 272
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 275
    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    .line 282
    iget-object v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 283
    iget-object v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 284
    iget-object v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 285
    iget-object v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 286
    iget-object v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 287
    iget v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    iput v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    .line 288
    iget v0, p1, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    iput v0, p0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    .line 289
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 294
    new-instance v0, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable$COUIRoundDrawableState;)V

    .line 295
    .local v0, "drawable":Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;->access$002(Lcom/coui/appcompat/widget/shape/COUIRoundDrawable;Z)Z

    .line 296
    return-object v0
.end method
