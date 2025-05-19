.class public Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.super Landroidx/preference/Preference;
.source "COUIRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;,
        Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;,
        Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;,
        Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;
    }
.end annotation


# instance fields
.field private mBackground:Lcom/coui/appcompat/preference/COUIRecommendedDrawable;

.field private mColor:I

.field private mHeaderText:Ljava/lang/String;

.field private mRadius:F

.field private mRecommendedEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    sget v0, Lcoui/support/appcompat/R$attr;->couiRecommendedPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget v0, Lcoui/support/appcompat/R$layout;->coui_recommended_preference_layout:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->setLayoutResource(I)V

    .line 44
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIRecommendedPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIRecommendedPreference_recommendedCardBgRadius:I

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->recommended_preference_list_card_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mRadius:F

    .line 46
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIRecommendedPreference_recommendedCardBgColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->bottom_recommended_recycler_view_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mColor:I

    .line 47
    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;

    iget v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mRadius:F

    iget v3, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mColor:I

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;-><init>(FI)V

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mBackground:Lcom/coui/appcompat/preference/COUIRecommendedDrawable;

    .line 48
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIRecommendedPreference_recommendedHeaderTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mHeaderText:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mHeaderText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->bottom_recommended_header_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mHeaderText:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 68
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mBackground:Lcom/coui/appcompat/preference/COUIRecommendedDrawable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 71
    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    if-nez v1, :cond_0

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 74
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mRecommendedEntityList:Ljava/util/List;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mHeaderText:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 77
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mRecommendedEntityList:Ljava/util/List;

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->setData(Ljava/util/List;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->setVisible(Z)V

    .line 61
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->mRecommendedEntityList:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->notifyChanged()V

    .line 63
    return-void

    .line 57
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->setVisible(Z)V

    .line 58
    return-void
.end method
