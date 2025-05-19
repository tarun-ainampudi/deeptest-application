.class public Lcom/coui/appcompat/widget/popupwindow/PopupListItem;
.super Ljava/lang/Object;
.source "PopupListItem.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIsCheckable:Z

.field private mIsChecked:Z

.field private mIsEnable:Z

.field private mRedDotAmount:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isEnable"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mRedDotAmount:I

    .line 29
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIconId:I

    .line 30
    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mTitle:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsEnable:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isEnable"    # Z

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isEnable"    # Z
    .param p4, "redDot"    # I

    .line 43
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "checkable"    # Z
    .param p4, "isEnable"    # Z

    .line 47
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "checkable"    # Z
    .param p4, "checked"    # Z
    .param p5, "redDotAmount"    # I
    .param p6, "isEnable"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mRedDotAmount:I

    .line 55
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p2, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mTitle:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsCheckable:Z

    .line 58
    iput-boolean p4, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsChecked:Z

    .line 59
    iput-boolean p6, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsEnable:Z

    .line 60
    iput p5, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mRedDotAmount:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "checkable"    # Z
    .param p4, "checked"    # Z
    .param p5, "isEnable"    # Z

    .line 51
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIconId:I

    return v0
.end method

.method public getRedDotAmount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mRedDotAmount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsCheckable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsChecked:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsEnable:Z

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsCheckable:Z

    .line 101
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsChecked:Z

    .line 109
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIsEnable:Z

    .line 93
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .line 68
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mIconId:I

    .line 69
    return-void
.end method

.method public setRedDotAmount(I)V
    .locals 0
    .param p1, "number"    # I

    .line 116
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mRedDotAmount:I

    .line 117
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/PopupListItem;->mTitle:Ljava/lang/String;

    .line 85
    return-void
.end method
