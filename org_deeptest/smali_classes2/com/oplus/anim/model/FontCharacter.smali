.class public Lcom/oplus/anim/model/FontCharacter;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final size:D

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "character"    # C
    .param p3, "size"    # D
    .param p5, "width"    # D
    .param p7, "style"    # Ljava/lang/String;
    .param p8, "fontFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ShapeGroup;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/content/ShapeGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oplus/anim/model/FontCharacter;->shapes:Ljava/util/List;

    .line 19
    iput-char p2, p0, Lcom/oplus/anim/model/FontCharacter;->character:C

    .line 20
    iput-wide p3, p0, Lcom/oplus/anim/model/FontCharacter;->size:D

    .line 21
    iput-wide p5, p0, Lcom/oplus/anim/model/FontCharacter;->width:D

    .line 22
    iput-object p7, p0, Lcom/oplus/anim/model/FontCharacter;->style:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/oplus/anim/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "character"    # C
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p0

    .line 29
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 31
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/oplus/anim/model/FontCharacter;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSize()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/oplus/anim/model/FontCharacter;->size:D

    return-wide v0
.end method

.method getStyle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/oplus/anim/model/FontCharacter;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oplus/anim/model/FontCharacter;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 52
    iget-char v0, p0, Lcom/oplus/anim/model/FontCharacter;->character:C

    iget-object v1, p0, Lcom/oplus/anim/model/FontCharacter;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/anim/model/FontCharacter;->style:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oplus/anim/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
