.class public final Lcom/coui/appcompat/widget/tablayout/COUITabItem;
.super Landroid/view/View;
.source "COUITabItem.java"


# instance fields
.field final mCustomLayout:I

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUITabItem:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabItem_android_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mText:Ljava/lang/CharSequence;

    .line 78
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabItem_android_icon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 79
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITabItem_android_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabItem;->mCustomLayout:I

    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 81
    return-void
.end method
