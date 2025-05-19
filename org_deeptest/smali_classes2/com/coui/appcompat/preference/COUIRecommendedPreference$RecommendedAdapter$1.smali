.class Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;
.super Ljava/lang/Object;
.source "COUIRecommendedPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;->onBindViewHolder(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;

.field final synthetic val$entity:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;

    .line 118
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;->this$0:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;->val$entity:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;->val$entity:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedAdapter$1;->val$entity:Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;->onRecommendedClick(Landroid/view/View;)V

    .line 124
    :cond_0
    return-void
.end method
