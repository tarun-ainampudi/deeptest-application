.class Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "COUILunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILunarDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1100
    new-instance v0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1122
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mYear:I

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mMonth:I

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mDay:I

    .line 1126
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/widget/COUILunarDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$1;

    .line 1096
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 1115
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1116
    iput p2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mYear:I

    .line 1117
    iput p3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mMonth:I

    .line 1118
    iput p4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mDay:I

    .line 1119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/widget/COUILunarDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$1;

    .line 1096
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    .line 1096
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    .line 1096
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    .line 1096
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1130
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1131
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    iget v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    return-void
.end method
