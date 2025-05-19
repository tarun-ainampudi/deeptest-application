.class public Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
.super Ljava/lang/Object;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cell"
.end annotation


# instance fields
.field cellLettersStr:Ljava/lang/String;

.field cellNumberAlpha:F

.field cellNumberStr:Ljava/lang/String;

.field cellNumberTranslateX:I

.field cellNumberTranslateY:I

.field column:I

.field row:I

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 235
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellLettersStr:Ljava/lang/String;

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberAlpha:F

    .line 236
    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$100(Lcom/coui/appcompat/widget/COUINumericKeyboard;II)V

    .line 237
    iput p2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->row:I

    .line 238
    iput p3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->column:I

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;IILcom/coui/appcompat/widget/COUINumericKeyboard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$1;

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;-><init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;II)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->row:I

    return v0
.end method

.method public setCellNumberAlpha(F)V
    .locals 1
    .param p1, "cellNumberAlpha"    # F

    .line 262
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberAlpha:F

    .line 263
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 264
    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .locals 1
    .param p1, "cellNumberTranslateX"    # I

    .line 271
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberTranslateX:I

    .line 272
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 273
    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .locals 1
    .param p1, "cellNumberTranslateY"    # I

    .line 280
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberTranslateY:I

    .line 281
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
