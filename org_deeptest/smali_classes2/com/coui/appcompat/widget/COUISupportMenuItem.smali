.class public Lcom/coui/appcompat/widget/COUISupportMenuItem;
.super Ljava/lang/Object;
.source "COUISupportMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISupportMenuItem$Builder;,
        Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final ITEM_EIGHTH:I = 0x7

.field public static final ITEM_FIFTH:I = 0x4

.field public static final ITEM_FIRST:I = 0x0

.field public static final ITEM_FOURTH:I = 0x3

.field public static final ITEM_NINTH:I = 0x8

.field public static final ITEM_SECOND:I = 0x1

.field public static final ITEM_SEVENTH:I = 0x6

.field public static final ITEM_SIXTH:I = 0x5

.field public static final ITEM_TENTH:I = 0x9

.field public static final ITEM_THIRD:I = 0x2


# instance fields
.field private mBackgroud:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mOnItemClickListener:Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUISupportMenuItem;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .param p1, "x1"    # Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUISupportMenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/COUISupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUISupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUISupportMenuItem;Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;)Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISupportMenuItem;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    .line 20
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    return-object p1
.end method


# virtual methods
.method public getBackgroud()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnItemClickListener()Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroud(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroud"    # Landroid/graphics/drawable/Drawable;

    .line 114
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mBackgroud:Landroid/graphics/drawable/Drawable;

    .line 115
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mIcon"    # Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    return-void
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    .line 130
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mOnItemClickListener:Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    .line 131
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mText"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuItem;->mText:Ljava/lang/String;

    .line 99
    return-void
.end method
