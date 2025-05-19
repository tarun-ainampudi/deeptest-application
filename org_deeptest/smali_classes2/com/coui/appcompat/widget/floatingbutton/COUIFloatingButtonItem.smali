.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
.super Ljava/lang/Object;
.source "COUIFloatingButtonItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_NOT_SET:I = -0x80000000


# instance fields
.field private mCOUIFloatingButtonExpandEnable:Z

.field private final mCOUIFloatingButtonItemLocation:I

.field private mFabBackgroundColor:Landroid/content/res/ColorStateList;

.field private final mFabImageDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFabImageResource:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mLabel:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLabelBackgroundColor:Landroid/content/res/ColorStateList;

.field private mLabelColor:Landroid/content/res/ColorStateList;

.field private final mLabelRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 47
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 48
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonExpandEnable:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonItemLocation:I

    .line 317
    return-void
.end method

.method private constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 47
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 48
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonExpandEnable:Z

    .line 52
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    .line 54
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    .line 55
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 57
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 58
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    .line 59
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonExpandEnable:Z

    .line 60
    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->access$800(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonItemLocation:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    return v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonExpandEnable:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonItemLocation:I

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createFabWithLabelView(Landroid/content/Context;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "COUIFloatingButtonLabel":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setFloatingButtonItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)V

    .line 151
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getFabBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getFabImageDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatingButtonItemLocation()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonItemLocation:I

    return v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 83
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabelBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isCOUIFloatingButtonExpandEnable()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonExpandEnable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mFabImageResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->mCOUIFloatingButtonItemLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    return-void
.end method
