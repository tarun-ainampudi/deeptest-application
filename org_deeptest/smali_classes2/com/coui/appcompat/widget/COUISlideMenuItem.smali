.class public Lcom/coui/appcompat/widget/COUISlideMenuItem;
.super Ljava/lang/Object;
.source "COUISlideMenuItem.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field mBackgroundStyleId:[I

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .line 84
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_slide_copy_background:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "drawble"    # Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_delete_background:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_copy_background:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_rename_background:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackgroundStyleId:[I

    .line 42
    const/16 v0, 0x36

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    .line 102
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_copy_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_slideview_menuitem_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 91
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_slide_copy_background:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "id"    # I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_delete_background:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_copy_background:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_slide_rename_background:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackgroundStyleId:[I

    .line 42
    const/16 v0, 0x36

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    .line 53
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_slideview_menuitem_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    .line 57
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    return v0
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "id"    # I

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawble"    # Landroid/graphics/drawable/Drawable;

    .line 122
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 123
    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 2
    .param p1, "index"    # I

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mBackgroundStyleId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 186
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "text"    # I

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 154
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 155
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 170
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideMenuItem;->mWidth:I

    .line 171
    return-void
.end method
