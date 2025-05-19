.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "COUIRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecommendedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ENTITY:I = 0x1

.field private static final ITEM_VIEW_TYPE_HEADER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->setData(Ljava/util/List;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 131
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    check-cast p1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->onBindViewHolder(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;I)V
    .locals 4
    .param p1, "holder"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    .line 114
    .local v0, "entity":Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;
    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->access$000(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Landroid/widget/TextView;

    move-result-object v1

    .line 115
    .local v1, "titleView":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->access$100(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    if-lez p2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcoui/support/appcompat/R$drawable;->recommended_text_ripple_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;-><init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 106
    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->item_recommended_head_textview:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->item_recommended_common_textview:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v1
.end method

.method public setData(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;>;"
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->mEntities:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-direct {v2, p2}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method
