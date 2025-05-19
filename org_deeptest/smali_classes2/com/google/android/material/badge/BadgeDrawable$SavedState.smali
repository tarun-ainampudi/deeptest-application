.class public final Lcom/google/android/material/badge/BadgeDrawable$SavedState;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeDrawable$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:I

.field private backgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private badgeGravity:I

.field private badgeTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private contentDescriptionNumberless:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentDescriptionQuantityStrings:I
    .annotation build Landroidx/annotation/PluralsRes;
    .end annotation
.end field

.field private horizontalOffset:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field private maxCharacterCount:I

.field private number:I

.field private verticalOffset:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 201
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    sget v1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 203
    .local v0, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 204
    sget v1, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    .line 205
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 206
    sget v1, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 207
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 181
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 181
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .param p1, "x1"    # I

    .line 181
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 244
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->horizontalOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->verticalOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    return-void
.end method
