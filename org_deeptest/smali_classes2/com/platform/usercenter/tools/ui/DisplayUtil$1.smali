.class final Lcom/platform/usercenter/tools/ui/DisplayUtil$1;
.super Ljava/lang/Object;
.source "DisplayUtil.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/tools/ui/DisplayUtil;->getNoWhitespacefilter()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 297
    const/4 v0, 0x1

    .line 298
    .local v0, "keepOriginal":Z
    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v2, p3, p2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v1, "sb":Ljava/lang/StringBuilder;
    move v2, v0

    move v0, p2

    .local v0, "i":I
    .local v2, "keepOriginal":Z
    :goto_0
    if-ge v0, p3, :cond_1

    .line 300
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 301
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_0
    const/4 v2, 0x0

    .line 299
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_2
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 311
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 313
    .local v0, "sp":Landroid/text/SpannableString;
    :try_start_0
    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v4, p2

    move v5, p3

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_2

    .line 314
    :catch_0
    move-exception v3

    .line 317
    :goto_2
    return-object v0

    .line 319
    .end local v0    # "sp":Landroid/text/SpannableString;
    :cond_3
    return-object v1
.end method
