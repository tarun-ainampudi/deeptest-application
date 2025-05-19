.class public Lcom/coui/appcompat/preference/COUIPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "COUIPreferenceCategory.java"


# instance fields
.field private mIsFirst:Z

.field private mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreferenceCategory:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreferenceCategory_isFirstCategory:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIsFirst:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->support_preference_category_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mPadding:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method private changeDividerVisibility(Landroidx/preference/PreferenceViewHolder;IIII)V
    .locals 3
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .param p2, "dividerId"    # I
    .param p3, "visibility"    # I
    .param p4, "rootId"    # I
    .param p5, "mPadding"    # I

    .line 64
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p1, p4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 68
    .local v1, "root":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p5, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    .end local v1    # "root":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIsFirst:Z

    if-eqz v0, :cond_0

    .line 57
    sget v3, Lcoui/support/appcompat/R$id;->coui_category_top_divider:I

    const/16 v4, 0x8

    sget v5, Lcoui/support/appcompat/R$id;->coui_category_root:I

    iget v6, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mPadding:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->changeDividerVisibility(Landroidx/preference/PreferenceViewHolder;IIII)V

    goto :goto_0

    .line 59
    :cond_0
    sget v9, Lcoui/support/appcompat/R$id;->coui_category_top_divider:I

    const/4 v10, 0x0

    sget v11, Lcoui/support/appcompat/R$id;->coui_category_root:I

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->changeDividerVisibility(Landroidx/preference/PreferenceViewHolder;IIII)V

    .line 61
    :goto_0
    return-void
.end method

.method public setIsFirstCategory(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIsFirst:Z

    .line 81
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->notifyChanged()V

    .line 82
    return-void
.end method
