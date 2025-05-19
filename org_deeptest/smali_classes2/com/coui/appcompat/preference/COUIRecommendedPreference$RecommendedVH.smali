.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "COUIRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecommendedVH"
.end annotation


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mTitleView:Landroid/widget/TextView;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method
