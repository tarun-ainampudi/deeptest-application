.class public Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;
.super Ljava/lang/Object;
.source "COUIRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendedEntity"
.end annotation


# instance fields
.field private onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "onRecommendedClickListener"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;)Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    .line 144
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;->onRecommendedClickListener:Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;

    return-object v0
.end method
