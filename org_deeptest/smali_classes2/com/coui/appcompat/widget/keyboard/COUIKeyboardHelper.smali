.class public Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;
.super Ljava/lang/Object;
.source "COUIKeyboardHelper.java"

# interfaces
.implements Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;


# static fields
.field private static final KEYBOARD_MODE_NUMERIC:I = 0x3

.field private static final KEYBOARD_MODE_QWERTY:I = 0x1

.field private static final KEYBOARD_MODE_SPECIAL_SYMBOLS:I = 0x4

.field private static final KEYBOARD_MODE_SYMBOLS:I = 0x2

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final SPECIAL_SYMBOLS:I = 0x3

.field private static final SYMBOLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyboardHelper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field protected mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLinearMotorVersion:Z

.field private mKeyboardState:I

.field private mKeyboardType:I

.field private final mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

.field private mKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mLayouts:[I

.field private mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field private mPlayVoice:Z

.field private mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftedIcon:Landroid/graphics/drawable/Drawable;

.field private mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field private mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field private final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
    .param p3, "targetView"    # Landroid/view/View;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardType:I

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mEnableHaptics:Z

    .line 50
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mPlayVoice:Z

    .line 63
    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lcoui/support/appcompat/R$xml;->coui_password_kbd_numeric:I

    aput v3, v2, v1

    sget v1, Lcoui/support/appcompat/R$xml;->coui_password_kbd_qwerty:I

    aput v1, v2, v0

    sget v1, Lcoui/support/appcompat/R$xml;->coui_password_kbd_symbols:I

    const/4 v3, 0x2

    aput v1, v2, v3

    sget v1, Lcoui/support/appcompat/R$xml;->coui_password_kbd_special_symbols:I

    const/4 v3, 0x3

    aput v1, v2, v3

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mLayouts:[I

    .line 72
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 74
    iput-object p2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 75
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;)V

    .line 76
    invoke-static {p1}, Lcom/coui/appcompat/util/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mIsLinearMotorVersion:Z

    .line 78
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->createSecurityKeyboards()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->setKeyboardMode(I)V

    .line 84
    return-void
.end method

.method private createSecurityKeyboards()V
    .locals 6

    .line 87
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setKeyboardType(I)V

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setKeyboardType(I)V

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mLayouts:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-direct {v0, v2, v3, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setKeyboardType(I)V

    .line 97
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mLayouts:[I

    aget v1, v3, v1

    invoke-direct {v0, v2, v1, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 100
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setKeyboardType(I)V

    .line 101
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleCharacter(I[I)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 305
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 310
    return-void
.end method

.method private handleClose()V
    .locals 0

    .line 314
    return-void
.end method

.method private handleModeChange(I)V
    .locals 5
    .param p1, "primaryCode"    # I

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v0

    .line 238
    .local v0, "current":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v3, -0x6

    if-ne v0, v1, :cond_1

    if-ne p1, v3, :cond_1

    .line 241
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 243
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_3

    if-ne p1, v3, :cond_3

    .line 245
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_4

    if-ne p1, v2, :cond_4

    .line 247
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_5

    if-ne p1, v3, :cond_5

    .line 249
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v2, -0x7

    if-ne v0, v1, :cond_6

    if-ne p1, v2, :cond_6

    .line 251
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_7

    if-ne p1, v2, :cond_7

    .line 253
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 254
    :cond_7
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v1, :cond_8

    if-ne p1, v3, :cond_8

    .line 255
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    goto :goto_0

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 259
    .local v1, "next":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setPreviewEnabled(Z)V

    .line 260
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 262
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v1, v2, :cond_a

    .line 263
    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 264
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->updateShiftKeyIcon(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 265
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setNewShifted(I)V

    .line 268
    :cond_a
    return-void
.end method

.method private handleShift(Z)V
    .locals 6
    .param p1, "init"    # Z

    .line 280
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v0

    .line 281
    .local v0, "current":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 282
    .local v1, "isQwertyMode":Z
    :goto_0
    if-nez v1, :cond_1

    .line 283
    return-void

    .line 285
    :cond_1
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    if-nez v4, :cond_2

    .line 286
    iput v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    goto :goto_1

    .line 287
    :cond_2
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    const/4 v5, 0x2

    if-ne v4, v3, :cond_4

    .line 288
    if-nez p1, :cond_3

    .line 290
    iput v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    goto :goto_1

    .line 292
    :cond_3
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    goto :goto_1

    .line 294
    :cond_4
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_5

    .line 295
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 297
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 298
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->updateShiftKeyIcon(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 299
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setNewShifted(I)V

    .line 300
    return-void
.end method

.method private performHapticFeedback()V
    .locals 3

    .line 317
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->performHapticFeedback(I)Z

    .line 319
    return-void

    .line 321
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->performHapticFeedback(II)Z

    .line 326
    :cond_1
    return-void
.end method

.method private performKeyVoiceFeedback()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mPlayVoice:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 332
    :cond_0
    return-void
.end method

.method private sendDownUpKeyEvents(I)V
    .locals 0
    .param p1, "keyEventCode"    # I

    .line 187
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 0
    .param p1, "character"    # I

    .line 169
    return-void
.end method

.method private setVoiceEanble(Z)V
    .locals 0
    .param p1, "eanble"    # Z

    .line 120
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mPlayVoice:Z

    .line 121
    return-void
.end method

.method private updateShiftKeyIcon(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 335
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-eq p1, v0, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_sym_keyboard_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_sym_keyboard_shift_shifted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_sym_keyboard_shift_locked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 341
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 342
    .local v0, "shiftKeyIndex":I
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    if-nez v1, :cond_1

    .line 343
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 344
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 345
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 346
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 347
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 349
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getIconForImeAction(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "imeOptions"    # I

    .line 381
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 394
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_security_password_end_key_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_security_password_end_key_previous:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_security_password_end_key_next:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_security_password_end_key_search:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 385
    :pswitch_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_security_password_end_key_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public handleBackspace()V
    .locals 1

    .line 271
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 272
    return-void
.end method

.method public handleClear()V
    .locals 1

    .line 275
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 276
    return-void
.end method

.method public onKey(I[I)V
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .line 192
    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleBackspace()V

    goto :goto_1

    .line 194
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 195
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleShift(Z)V

    goto :goto_1

    .line 196
    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, -0x6

    if-ne p1, v0, :cond_3

    .line 200
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleModeChange(I)V

    goto :goto_1

    .line 202
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleCharacter(I[I)V

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v0

    .line 205
    .local v0, "current":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-ne v0, v2, :cond_5

    .line 207
    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 208
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->updateShiftKeyIcon(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 209
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 210
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setNewShifted(I)V

    goto :goto_1

    .line 198
    .end local v0    # "current":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleModeChange(I)V

    .line 214
    :cond_5
    :goto_1
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "NOT_A_KEY":I
    if-eq p1, v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->performHapticFeedback()V

    .line 405
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->performKeyVoiceFeedback()V

    .line 408
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .line 413
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 418
    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mEnableHaptics:Z

    .line 107
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 127
    .local v0, "visiblePassword":Z
    :goto_0
    const/4 v3, 0x0

    .line 129
    .local v3, "enablePreview":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 142
    :pswitch_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    goto :goto_1

    .line 139
    :pswitch_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mNumberKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 140
    goto :goto_1

    .line 135
    :pswitch_2
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mSymbolsKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 136
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 137
    goto :goto_1

    .line 131
    :pswitch_3
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mQwertyKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 132
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardState:I

    .line 133
    nop

    .line 145
    :goto_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v4, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setPreviewEnabled(Z)V

    .line 146
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardType:I

    .line 147
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->handleShift(Z)V

    .line 148
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 4
    .param p1, "id"    # I

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "tmpArray":[I
    :try_start_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 227
    const-string v2, "KeyboardHelper"

    const-string v3, "Vibrate pattern missing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 231
    return-void

    .line 233
    :cond_1
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .line 423
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .line 428
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .line 433
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .line 438
    return-void
.end method

.method public updateEndKey(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 369
    .local v1, "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 370
    .local v3, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v4, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 371
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 372
    iput-object p1, v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 373
    goto :goto_2

    .line 375
    .end local v3    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_0
    goto :goto_1

    .line 376
    .end local v1    # "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    :cond_1
    :goto_2
    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 378
    return-void
.end method

.method public updateEndKey(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 352
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->ime_action_done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 354
    .local v0, "temp":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 355
    .local v2, "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 356
    .local v4, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v5, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 357
    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_2

    :cond_0
    move-object v3, v0

    :goto_2
    iput-object v3, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 358
    const/4 v3, 0x0

    iput-object v3, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 359
    goto :goto_3

    .line 361
    .end local v4    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_1
    goto :goto_1

    .line 362
    .end local v2    # "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    :cond_2
    :goto_3
    goto :goto_0

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 364
    return-void
.end method
