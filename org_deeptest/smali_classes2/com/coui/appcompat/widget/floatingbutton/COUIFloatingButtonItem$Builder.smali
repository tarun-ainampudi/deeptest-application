.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
.super Ljava/lang/Object;
.source "COUIFloatingButtonItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCOUIFloatingButtonExpandEnable:Z

.field private final mCOUIFloatingButtonItemLocation:I

.field private mFabBackgroundColor:Landroid/content/res/ColorStateList;

.field private mFabImageDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFabImageResource:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLabelBackgroundColor:Landroid/content/res/ColorStateList;

.field private mLabelColor:Landroid/content/res/ColorStateList;

.field private mLabelRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "fabImageResource"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    .line 167
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 169
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    .line 181
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonItemLocation:I

    .line 182
    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageResource:I

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    .line 167
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 169
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    .line 196
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonItemLocation:I

    .line 197
    iput-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 198
    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageResource:I

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)V
    .locals 2
    .param p1, "COUIFloatingButtonItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    .line 167
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 169
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    .line 207
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabel:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    .line 209
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageResource:I

    .line 210
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 212
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 213
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 214
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    .line 215
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->access$1700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonItemLocation:I

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageResource:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 157
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonItemLocation:I

    return v0
.end method


# virtual methods
.method public create()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 2

    .line 294
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$1;)V

    return-object v0
.end method

.method public setCOUIFloatingButtonExpandEnable(Z)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "couiFloatingButtonExpandEnable"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mCOUIFloatingButtonExpandEnable:Z

    .line 285
    return-object p0
.end method

.method public setFabBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "fabBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 249
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 250
    return-object p0
.end method

.method public setLabel(I)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "labelRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 237
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelRes:I

    .line 238
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabel:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setLabelBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "labelBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 273
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 274
    return-object p0
.end method

.method public setLabelColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 0
    .param p1, "labelColor"    # Landroid/content/res/ColorStateList;

    .line 261
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 262
    return-object p0
.end method
